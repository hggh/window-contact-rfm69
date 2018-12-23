EESchema Schematic File Version 4
LIBS:window-contact-rfm69-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L window-contact-rfm69-rescue:Battery_Cell BT1
U 1 1 5B016578
P 1050 1400
F 0 "BT1" H 1150 1500 50  0000 L CNN
F 1 "CR2032" H 1150 1400 50  0000 L CNN
F 2 "battery:CR2032" V 1050 1460 50  0001 C CNN
F 3 "" V 1050 1460 50  0000 C CNN
	1    1050 1400
	1    0    0    -1  
$EndComp
$Comp
L window-contact-rfm69-rescue:C C3
U 1 1 5B016625
P 2100 5150
F 0 "C3" H 2125 5250 50  0000 L CNN
F 1 "100nf" H 2125 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2138 5000 50  0001 C CNN
F 3 "" H 2100 5150 50  0000 C CNN
	1    2100 5150
	1    0    0    -1  
$EndComp
$Comp
L window-contact-rfm69-rescue:R R2
U 1 1 5B01665D
P 5250 7200
F 0 "R2" V 5330 7200 50  0000 C CNN
F 1 "10M" V 5250 7200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5180 7200 50  0001 C CNN
F 3 "" H 5250 7200 50  0000 C CNN
	1    5250 7200
	1    0    0    -1  
$EndComp
$Comp
L window-contact-rfm69-rescue:R R1
U 1 1 5B0166FD
P 4700 5900
F 0 "R1" V 4780 5900 50  0000 C CNN
F 1 "10k" V 4700 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4630 5900 50  0001 C CNN
F 3 "" H 4700 5900 50  0000 C CNN
	1    4700 5900
	0    1    1    0   
$EndComp
Text GLabel 1900 1500 2    60   Input ~ 0
GND
Text GLabel 1900 1200 2    60   Input ~ 0
VCC
$Comp
L window-contact-rfm69-rescue:CP C1
U 1 1 5B018A0C
P 1650 1350
F 0 "C1" H 1675 1450 50  0000 L CNN
F 1 "10uF" H 1675 1250 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_4x5.8" H 1688 1200 50  0001 C CNN
F 3 "" H 1650 1350 50  0000 C CNN
	1    1650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1500 1650 1500
Connection ~ 1650 1500
Wire Wire Line
	1050 1200 1650 1200
Connection ~ 1650 1200
$Comp
L window-contact-rfm69-rescue:ATMEGA328P-A IC1
U 1 1 5B0ACB62
P 3200 5550
F 0 "IC1" H 2450 6800 50  0000 L BNN
F 1 "ATMEGA328P-A" H 3600 4150 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 3200 5550 50  0000 C CIN
F 3 "" H 3200 5550 50  0000 C CNN
	1    3200 5550
	1    0    0    -1  
$EndComp
Text GLabel 1750 4500 0    60   Input ~ 0
VCC
NoConn ~ 2300 5050
$Comp
L window-contact-rfm69-rescue:C C2
U 1 1 5B13F6B2
P 2000 4650
F 0 "C2" H 2025 4750 50  0000 L CNN
F 1 "100nf" H 2025 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2038 4500 50  0001 C CNN
F 3 "" H 2000 4650 50  0000 C CNN
	1    2000 4650
	1    0    0    -1  
$EndComp
Text GLabel 1800 5000 0    60   Input ~ 0
VCC
Wire Wire Line
	1750 4500 2000 4500
Wire Wire Line
	2300 4450 2300 4500
Connection ~ 2000 4500
Connection ~ 2300 4500
Wire Wire Line
	2000 4800 2000 6650
Wire Wire Line
	2000 6650 2300 6650
Wire Wire Line
	2000 6750 2300 6750
Connection ~ 2000 6650
Text GLabel 2000 6900 3    60   Input ~ 0
GND
Connection ~ 2000 6750
Wire Wire Line
	2300 5000 2300 4750
Wire Wire Line
	1800 5000 2100 5000
Connection ~ 2100 5000
Wire Wire Line
	2100 5300 2100 6550
Wire Wire Line
	2100 6550 2200 6550
Text GLabel 2200 6900 3    60   Input ~ 0
GND
Wire Wire Line
	2200 6900 2200 6550
Connection ~ 2200 6550
NoConn ~ 2300 5800
NoConn ~ 2300 5900
$Comp
L window-contact-rfm69-rescue:R R6
U 1 1 5B140033
P 8800 5000
F 0 "R6" V 8880 5000 50  0000 C CNN
F 1 "1k" V 8800 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8730 5000 50  0001 C CNN
F 3 "" H 8800 5000 50  0000 C CNN
	1    8800 5000
	0    1    1    0   
$EndComp
$Comp
L rfm69:RFM69 RF1
U 1 1 5B1401F8
P 7600 5100
F 0 "RF1" H 7900 5650 60  0000 C CNN
F 1 "RFM69" H 7550 5650 60  0000 C CNN
F 2 "rfm69:RFM96" V 7750 5150 60  0001 C CNN
F 3 "" V 7750 5150 60  0000 C CNN
	1    7600 5100
	1    0    0    -1  
$EndComp
Text GLabel 5100 5900 2    60   Input ~ 0
VCC
Wire Wire Line
	5100 5900 4850 5900
Wire Wire Line
	4550 5900 4500 5900
Text GLabel 8600 5300 2    60   Input ~ 0
VCC
Text GLabel 8950 5200 2    60   Input ~ 0
GND
Text GLabel 7000 5400 3    60   Input ~ 0
GND
Wire Wire Line
	8600 5300 8200 5300
Wire Wire Line
	7200 5400 7000 5400
Wire Wire Line
	8200 5200 8950 5200
$Comp
L window-contact-rfm69-rescue:CONN_01X01 P6
U 1 1 5B140A1B
P 8600 5600
F 0 "P6" H 8600 5700 50  0000 C CNN
F 1 "AN" V 8700 5600 50  0000 C CNN
F 2 "wirepad:Wire_SMD_Pad_1PIN" H 8600 5600 50  0001 C CNN
F 3 "" H 8600 5600 50  0000 C CNN
	1    8600 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 5400 8200 5400
NoConn ~ 8200 5100
NoConn ~ 7200 5300
NoConn ~ 7200 5200
NoConn ~ 7200 5100
$Comp
L window-contact-rfm69-rescue:R R5
U 1 1 5B140CDD
P 8500 4900
F 0 "R5" V 8580 4900 50  0000 C CNN
F 1 "1k" V 8500 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8430 4900 50  0001 C CNN
F 3 "" H 8500 4900 50  0000 C CNN
	1    8500 4900
	0    1    1    0   
$EndComp
$Comp
L window-contact-rfm69-rescue:R R4
U 1 1 5B140D43
P 6900 4800
F 0 "R4" V 6980 4800 50  0000 C CNN
F 1 "1k" V 6900 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6830 4800 50  0001 C CNN
F 3 "" H 6900 4800 50  0000 C CNN
	1    6900 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 4800 7200 4800
Wire Wire Line
	8200 4900 8350 4900
Wire Wire Line
	8200 5000 8650 5000
Wire Bus Line
	6800 4550 6800 4350
Wire Bus Line
	8300 4350 8300 4400
Entry Wire Line
	4400 4450 4500 4550
Entry Wire Line
	4500 4450 4600 4550
Entry Wire Line
	4650 4450 4750 4550
Entry Wire Line
	4800 4450 4900 4550
Wire Wire Line
	4400 4450 4400 4650
Wire Wire Line
	4400 4650 4200 4650
Wire Wire Line
	4500 4750 4200 4750
Wire Wire Line
	4650 4450 4650 4850
Wire Wire Line
	4650 4850 4200 4850
Wire Wire Line
	4800 4450 4800 4950
Wire Wire Line
	4800 4950 4200 4950
Text Label 4450 4950 0    60   ~ 0
SCK
Text Label 4350 4850 0    60   ~ 0
MISO
Text Label 4250 4750 0    60   ~ 0
MOSI
Text Label 4250 4650 0    60   ~ 0
SS
Entry Wire Line
	8300 4350 8400 4450
Entry Wire Line
	8250 4350 8350 4450
Entry Wire Line
	8100 4350 8200 4450
Entry Wire Line
	8200 4350 8300 4450
Wire Wire Line
	6750 4800 6750 4650
Wire Wire Line
	6750 4650 7300 4650
Wire Wire Line
	7300 4650 7300 4450
Wire Wire Line
	7300 4450 8200 4450
Text Label 7500 4450 0    60   ~ 0
MISO
Wire Wire Line
	7200 4900 5800 4900
Wire Wire Line
	5800 4900 5800 6300
Wire Wire Line
	5800 6300 4200 6300
Wire Wire Line
	4200 6300 4200 6250
Wire Wire Line
	8300 4450 8300 4800
Wire Wire Line
	8300 4800 8200 4800
Text Label 8200 4800 0    60   ~ 0
SS
Wire Wire Line
	8350 4450 8350 4800
Wire Wire Line
	8350 4800 8650 4800
Wire Wire Line
	8650 4800 8650 4900
Wire Wire Line
	8400 4450 8950 4450
Wire Wire Line
	8950 4450 8950 5000
Text Label 8500 4800 0    60   ~ 0
SCK
Text Label 8950 4900 0    60   ~ 0
MOSI
$Comp
L window-contact-rfm69-rescue:CONN_01X06 P4
U 1 1 5B19650E
P 6300 3400
F 0 "P4" H 6300 3750 50  0000 C CNN
F 1 "ISP" V 6400 3400 50  0000 C CNN
F 2 "isp:SMD" H 6300 3400 50  0001 C CNN
F 3 "" H 6300 3400 50  0000 C CNN
	1    6300 3400
	0    -1   -1   0   
$EndComp
NoConn ~ 7200 5000
Entry Wire Line
	6300 4450 6400 4550
Entry Wire Line
	6200 4450 6300 4550
Entry Wire Line
	6050 4450 6150 4550
Text GLabel 6550 3750 3    60   Input ~ 0
GND
Text GLabel 6150 3750 3    60   Input ~ 0
VCC
Wire Wire Line
	6150 3600 6150 3750
Wire Wire Line
	6550 3600 6550 3750
Wire Wire Line
	6450 3600 6450 5600
Wire Wire Line
	6450 5600 4500 5600
Wire Wire Line
	4500 5600 4500 5900
Connection ~ 4500 5900
Wire Wire Line
	6300 4450 6350 4450
Wire Wire Line
	6350 4450 6350 3600
Wire Wire Line
	6200 4450 6200 4100
Wire Wire Line
	6200 4100 6250 4100
Wire Wire Line
	6250 4100 6250 3600
Wire Wire Line
	6050 4450 6050 3600
Text Label 6050 4100 3    60   ~ 0
MISO
Text Label 6200 4250 1    60   ~ 0
SCK
Text Label 6350 4250 1    60   ~ 0
MOSI
$Comp
L window-contact-rfm69-rescue:CONN_01X01 P5
U 1 1 5B197BA2
P 6350 6650
F 0 "P5" H 6350 6750 50  0000 C CNN
F 1 "RE2" V 6450 6650 50  0000 C CNN
F 2 "wirepad:Wire_SMD_Pad_1PIN" H 6350 6650 50  0001 C CNN
F 3 "" H 6350 6650 50  0000 C CNN
	1    6350 6650
	1    0    0    -1  
$EndComp
$Comp
L window-contact-rfm69-rescue:CONN_01X01 P3
U 1 1 5B197C31
P 5600 7050
F 0 "P3" H 5600 7150 50  0000 C CNN
F 1 "RE1" V 5700 7050 50  0000 C CNN
F 2 "wirepad:Wire_SMD_Pad_1PIN" H 5600 7050 50  0001 C CNN
F 3 "" H 5600 7050 50  0000 C CNN
	1    5600 7050
	1    0    0    -1  
$EndComp
$Comp
L window-contact-rfm69-rescue:CONN_01X01 P1
U 1 1 5B197CCB
P 1800 2100
F 0 "P1" H 1800 2200 50  0000 C CNN
F 1 "VCC" V 1900 2100 50  0000 C CNN
F 2 "wirepad:Wire_SMD_Pad_1PIN" H 1800 2100 50  0001 C CNN
F 3 "" H 1800 2100 50  0000 C CNN
	1    1800 2100
	1    0    0    -1  
$EndComp
Text GLabel 1500 2100 0    60   Input ~ 0
VCC
Wire Wire Line
	1600 2100 1500 2100
$Comp
L window-contact-rfm69-rescue:R R3
U 1 1 5B1981B6
P 6000 6800
F 0 "R3" V 6080 6800 50  0000 C CNN
F 1 "10M" V 6000 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5930 6800 50  0001 C CNN
F 3 "" H 6000 6800 50  0000 C CNN
	1    6000 6800
	1    0    0    -1  
$EndComp
Text GLabel 6000 7100 3    60   Input ~ 0
GND
Text GLabel 5250 7450 3    60   Input ~ 0
GND
Wire Wire Line
	5250 7350 5250 7450
Wire Wire Line
	5250 7050 5400 7050
Wire Wire Line
	6000 7100 6000 6950
Wire Wire Line
	5700 6650 6000 6650
Wire Wire Line
	4200 5300 5700 5300
Wire Wire Line
	5700 5300 5700 6650
Connection ~ 6000 6650
Wire Wire Line
	4200 5400 5400 5400
Wire Wire Line
	5400 5400 5400 6900
Wire Wire Line
	5400 6900 5250 6900
Wire Wire Line
	5250 6900 5250 7050
NoConn ~ 4200 4450
NoConn ~ 4200 4550
NoConn ~ 4200 5600
NoConn ~ 4200 5700
NoConn ~ 4200 5800
NoConn ~ 4200 6450
NoConn ~ 4200 6550
NoConn ~ 4200 6650
NoConn ~ 4200 6750
$Comp
L window-contact-rfm69-rescue:R R9
U 1 1 5B891AA9
P 6750 6500
F 0 "R9" V 6830 6500 50  0000 C CNN
F 1 "10M" V 6750 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6680 6500 50  0001 C CNN
F 3 "" H 6750 6500 50  0000 C CNN
	1    6750 6500
	1    0    0    -1  
$EndComp
Text GLabel 6750 6800 3    60   Input ~ 0
GND
Wire Wire Line
	4200 6350 6750 6350
Wire Wire Line
	6750 6650 6750 6800
$Comp
L Switch1:SW_Push SW1
U 1 1 5B8920C1
P 7150 6350
F 0 "SW1" H 7200 6450 50  0000 L CNN
F 1 "LED ON" H 7150 6290 50  0000 C CNN
F 2 "button:SMD_Button" H 7150 6550 50  0001 C CNN
F 3 "" H 7150 6550 50  0001 C CNN
	1    7150 6350
	1    0    0    -1  
$EndComp
Text GLabel 7550 6350 2    60   Input ~ 0
VCC
Wire Wire Line
	7350 6350 7550 6350
Connection ~ 6750 6350
$Comp
L window-contact-rfm69-rescue:R R8
U 1 1 5B892B3A
P 5450 4200
F 0 "R8" V 5530 4200 50  0000 C CNN
F 1 "100" V 5450 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5380 4200 50  0001 C CNN
F 3 "" H 5450 4200 50  0000 C CNN
	1    5450 4200
	1    0    0    -1  
$EndComp
Text GLabel 5450 3850 1    60   Input ~ 0
GND
Wire Wire Line
	5450 3850 5450 4050
$Comp
L window-contact-rfm69-rescue:LED_Small D2
U 1 1 5B892EF0
P 5250 5000
F 0 "D2" H 5200 5125 50  0000 L CNN
F 1 "RE1" H 5075 4900 50  0000 L CNN
F 2 "LEDs:LED_0805" V 5250 5000 50  0001 C CNN
F 3 "" V 5250 5000 50  0000 C CNN
	1    5250 5000
	-1   0    0    1   
$EndComp
$Comp
L window-contact-rfm69-rescue:LED_Small D1
U 1 1 5B8932F8
P 4700 5150
F 0 "D1" H 4650 5275 50  0000 L CNN
F 1 "RE2" H 4525 5050 50  0000 L CNN
F 2 "LEDs:LED_0805" V 4700 5150 50  0001 C CNN
F 3 "" V 4700 5150 50  0000 C CNN
	1    4700 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 5000 4400 5000
Wire Wire Line
	4400 5000 4400 5050
Wire Wire Line
	4400 5050 4200 5050
Wire Wire Line
	4200 5150 4600 5150
Wire Wire Line
	5450 5150 4800 5150
Connection ~ 5450 5000
Wire Wire Line
	5450 4350 5450 5000
Wire Wire Line
	5450 5000 5350 5000
Wire Wire Line
	4350 6150 4350 6200
Wire Wire Line
	4350 6200 4750 6200
Wire Wire Line
	4200 6150 4350 6150
Wire Wire Line
	4400 6050 4200 6050
Wire Wire Line
	4400 6100 4400 6050
Wire Wire Line
	4750 6100 4400 6100
$Comp
L window-contact-rfm69-rescue:CONN_01X02 P2
U 1 1 5B19964F
P 4950 6150
F 0 "P2" H 4950 6300 50  0000 C CNN
F 1 "TX/RX" V 5050 6150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4950 6150 50  0001 C CNN
F 3 "" H 4950 6150 50  0000 C CNN
	1    4950 6150
	1    0    0    -1  
$EndComp
Text GLabel 4600 7500 3    60   Input ~ 0
GND
$Comp
L window-contact-rfm69-rescue:R R7
U 1 1 5B91A3F9
P 4600 7200
F 0 "R7" V 4680 7200 50  0000 C CNN
F 1 "10M" V 4600 7200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4530 7200 50  0001 C CNN
F 3 "" H 4600 7200 50  0000 C CNN
	1    4600 7200
	1    0    0    -1  
$EndComp
$Comp
L window-contact-rfm69-rescue:CONN_01X01 P7
U 1 1 5B91A4BB
P 4900 7000
F 0 "P7" H 4900 7100 50  0000 C CNN
F 1 "RE3" V 5000 7000 50  0000 C CNN
F 2 "wirepad:Wire_SMD_Pad_1PIN" H 4900 7000 50  0001 C CNN
F 3 "" H 4900 7000 50  0000 C CNN
	1    4900 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5500 4450 5500
Wire Wire Line
	4450 5500 4450 7000
Wire Wire Line
	4450 7000 4600 7000
Wire Wire Line
	4600 7000 4600 7050
Connection ~ 4600 7000
Wire Wire Line
	4600 7350 4600 7500
Wire Wire Line
	1650 1500 1900 1500
Wire Wire Line
	1650 1200 1900 1200
Wire Wire Line
	2000 4500 2300 4500
Wire Wire Line
	2300 4500 2300 4550
Wire Wire Line
	2000 6650 2000 6750
Wire Wire Line
	2000 6750 2000 6900
Wire Wire Line
	2100 5000 2300 5000
Wire Wire Line
	2200 6550 2300 6550
Wire Wire Line
	4500 5900 4200 5900
Wire Wire Line
	6000 6650 6150 6650
Wire Wire Line
	6750 6350 6950 6350
Wire Wire Line
	5450 5000 5450 5150
Wire Wire Line
	4600 7000 4700 7000
Wire Wire Line
	4500 4450 4500 4750
Wire Bus Line
	6800 4350 8300 4350
Wire Bus Line
	4400 4550 6800 4550
$EndSCHEMATC
