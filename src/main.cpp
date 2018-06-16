#include "Arduino.h"
#include <avr/power.h>
#include <RFM69.h>
#include <JeeLib.h>

#include "config.h"

// reed contact 1 = RE1/P3 = window fully open
#define REED_CONTACT_1 A1

// reed contact 2 = RE2/P5 = window half open
#define REED_CONTACT_2 A0

#define WINDOW_STATUS_UNDEFINED 0
#define WINDOW_STATUS_CLOSED    1
#define WINDOW_STATUS_HALF_OPEN 2
#define WINDOW_STATUS_OPENED    3

#define ACTION_STATUS_SLEEP 0
#define ACTION_STATUS_READ 1

RFM69 radio;
byte ADCSRA_status;
const float InternalReferenceVoltage = 1.1;
volatile short window_status = WINDOW_STATUS_UNDEFINED;
volatile short action_status = ACTION_STATUS_SLEEP;

ISR(WDT_vect) {
	Sleepy::watchdogEvent();
}

ISR(PCINT1_vect) {
	action_status = ACTION_STATUS_READ;
}

short get_window_status() {
	int reed_status_1 = digitalRead(REED_CONTACT_1);
	int reed_status_2 = digitalRead(REED_CONTACT_2);

#ifdef DEBUG
		Serial.print("Reed Status 1: ");
		Serial.println(reed_status_1);
		Serial.print("Reed Status 2: ");
		Serial.println(reed_status_2);
#endif

	if (reed_status_1 == LOW and reed_status_2 == LOW) {
		return WINDOW_STATUS_CLOSED;
	}

	if (reed_status_1 == HIGH and reed_status_2 == LOW) {
		return WINDOW_STATUS_OPENED;
	}

	if (reed_status_1 == LOW and reed_status_2 == HIGH) {
		return WINDOW_STATUS_HALF_OPEN;
	}

	return WINDOW_STATUS_UNDEFINED;
}

float read_battery_volatage() {
	power_adc_enable();
	ADCSRA = ADCSRA_status;
	ADCSRA |= bit (ADPS0) |  bit (ADPS1) | bit (ADPS2);  // Prescaler of 128
	ADMUX = bit (REFS0) | bit (MUX3) | bit (MUX2) | bit (MUX1);

	delay(10);
	bitSet (ADCSRA, ADSC);
	while (bit_is_set(ADCSRA, ADSC)) {
	}
	float battery_voltage = InternalReferenceVoltage / float (ADC + 0.5) * 1024.0;

#ifdef DEBUG
		Serial.print("Voltage = ");
		Serial.println(battery_voltage);
		Serial.flush();
#endif
	ADCSRA &= ~(1 << 7);
	power_adc_disable();
	return battery_voltage;
}

void setup_pin_change_interrupt() {
	noInterrupts();
	PCICR |= (1 << PCIE1);

	PCMSK1 |= (1<<PCINT8);
	PCMSK1 |= (1<<PCINT9);

	interrupts();
}

void disable_pin_change_interrupt() {
	noInterrupts();

	PCICR &= ~(1 << PCIE1);
	PCMSK1 &= ~(1<<PCINT8);
	PCMSK1 &= ~(1<<PCINT9);

	interrupts();
}

void send_status(short status) {
	char buffer[19];
	float volt = (double)read_battery_volatage();

	char volt_str[10];
	dtostrf(volt, 3,2, volt_str);

	sprintf(buffer, "WindowStatus:%d:%s", status, volt_str);
	radio.sendWithRetry(GATEWAYID, buffer, strlen(buffer), 6);
	radio.sleep();

#ifdef DEBUG
		Serial.println(buffer);
		Serial.flush();
#endif
}

void setup() {
#ifdef DEBUG
		Serial.begin(9600);
		Serial.println("Starting window-contact-rfm69");
		Serial.flush();
#else
		power_usart0_disable();
#endif
	ADCSRA_status = ADCSRA;
	ADCSRA &= ~(1 << 7);
	power_adc_disable();
	power_twi_disable();

	pinMode(REED_CONTACT_1, INPUT);
	pinMode(REED_CONTACT_2, INPUT);

	radio.initialize(FREQUENCY, NODEID, NETWORKID);
	radio.encrypt(ENCRYPTKEY);
	radio.sleep();

	window_status = get_window_status();
	send_status(window_status);

	setup_pin_change_interrupt();
}

void loop() {
	if (action_status == ACTION_STATUS_READ) {
		disable_pin_change_interrupt();

		Sleepy::loseSomeTime(3000);

		window_status = get_window_status();
		send_status(window_status);

		action_status = ACTION_STATUS_SLEEP;
	}
	if (action_status == ACTION_STATUS_SLEEP) {
#ifdef DEBUG
			Serial.println("at action_status == ACTION_STATUS_SLEEP");
			Serial.flush();
#endif
		setup_pin_change_interrupt();
		Sleepy::powerDown();
	}
}
