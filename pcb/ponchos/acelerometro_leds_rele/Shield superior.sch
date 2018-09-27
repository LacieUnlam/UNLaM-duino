EESchema Schematic File Version 2
LIBS:Shield superior-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:Relay
LIBS:philips
LIBS:display
LIBS:electromagnetic_actor
LIBS:rele
LIBS:Shield superior-cache
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:relays
EELAYER 25 0
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
L CONN_01X06 J2
U 1 1 5B5E6C64
P 3500 4250
F 0 "J2" H 3500 4600 50  0000 C CNN
F 1 "CONN_01X06" V 3600 4250 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B06B-EH-A_06x2.50mm_Straight" H 3500 4250 50  0001 C CNN
F 3 "" H 3500 4250 50  0001 C CNN
	1    3500 4250
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X08 J1
U 1 1 5B5E6C89
P 3500 3450
F 0 "J1" H 3500 3900 50  0000 C CNN
F 1 "CONN_01X08" V 3600 3450 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B08B-EH-A_08x2.50mm_Straight" H 3500 3450 50  0001 C CNN
F 3 "" H 3500 3450 50  0001 C CNN
	1    3500 3450
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X08 J4
U 1 1 5B5E6E57
P 6050 4100
F 0 "J4" H 6050 4550 50  0000 C CNN
F 1 "CONN_01X08" V 6150 4100 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B08B-EH-A_08x2.50mm_Straight" H 6050 4100 50  0001 C CNN
F 3 "" H 6050 4100 50  0001 C CNN
	1    6050 4100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 J3
U 1 1 5B5E6EB2
P 6050 3100
F 0 "J3" H 6050 3650 50  0000 C CNN
F 1 "CONN_01X10" V 6150 3100 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B10B-EH-A_10x2.50mm_Straight" H 6050 3100 50  0001 C CNN
F 3 "" H 6050 3100 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J5
U 1 1 5B5E6F70
P 4100 4700
F 0 "J5" H 4100 4900 50  0000 C CNN
F 1 "CONN_01X03" V 4200 4700 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B03B-EH-A_03x2.50mm_Straight" H 4100 4700 50  0001 C CNN
F 3 "" H 4100 4700 50  0001 C CNN
F 4 "NeoPixel" V 4300 4700 60  0000 C CNN "Campo4"
	1    4100 4700
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_1x03 J6
U 1 1 5B5E70F3
P 7200 2200
F 0 "J6" H 7200 2550 50  0000 C TNN
F 1 "Screw_Terminal_1x03" V 7050 2200 50  0000 C TNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-3pol" H 7200 1875 50  0001 C CNN
F 3 "" H 7175 2300 50  0001 C CNN
	1    7200 2200
	-1   0    0    1   
$EndComp
$Comp
L 7805 U1
U 1 1 5B5E72E1
P 3600 2550
F 0 "U1" H 3750 2354 50  0000 C CNN
F 1 "7805" H 3600 2750 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 3600 2550 50  0001 C CNN
F 3 "" H 3600 2550 50  0001 C CNN
	1    3600 2550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X08 J7
U 1 1 5B5E7780
P 4300 1850
F 0 "J7" H 4300 2300 50  0000 C CNN
F 1 "CONN_01X08" V 4400 1850 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B08B-EH-A_08x2.50mm_Straight" H 4300 1850 50  0001 C CNN
F 3 "" H 4300 1850 50  0001 C CNN
F 4 "Acelerómetro" V 4500 1850 60  0000 C CNN "Campo4"
	1    4300 1850
	0    -1   -1   0   
$EndComp
$Comp
L D D1
U 1 1 5B5E830F
P 5050 2200
F 0 "D1" H 5050 2300 50  0000 C CNN
F 1 "D" H 5050 2100 50  0000 C CNN
F 2 "Diodes_THT:D_5W_P12.70mm_Horizontal" H 5050 2200 50  0001 C CNN
F 3 "" H 5050 2200 50  0001 C CNN
	1    5050 2200
	0    1    1    0   
$EndComp
NoConn ~ 3700 3100
NoConn ~ 3700 3200
NoConn ~ 3700 3300
NoConn ~ 3700 3400
NoConn ~ 3700 3500
NoConn ~ 3700 3600
NoConn ~ 3700 4300
NoConn ~ 3700 4200
NoConn ~ 3700 4100
NoConn ~ 3700 4000
NoConn ~ 4050 2050
NoConn ~ 4150 2050
NoConn ~ 4250 2050
NoConn ~ 5850 3950
NoConn ~ 5850 4050
NoConn ~ 5850 4150
NoConn ~ 5850 4350
NoConn ~ 5850 4450
NoConn ~ 5850 3550
NoConn ~ 5850 3450
NoConn ~ 5850 3350
NoConn ~ 5850 3250
NoConn ~ 5850 3150
NoConn ~ 5850 3050
NoConn ~ 5850 2950
NoConn ~ 5850 2850
NoConn ~ 5850 2750
NoConn ~ 5850 2650
Text Label 3950 2150 2    39   ~ 0
INT
Text Label 4350 2200 2    39   ~ 0
SDA
Text Label 4450 2250 2    39   ~ 0
SCL
Text Label 3700 3700 0    39   ~ 0
GND
Text Label 3700 3800 0    39   ~ 0
Vin
Text Label 4350 4500 2    39   ~ 0
Data
$Comp
L BC548 Q1
U 1 1 5B60047E
P 4550 3300
F 0 "Q1" H 4750 3375 50  0000 L CNN
F 1 "BC548" H 4750 3300 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 4750 3225 50  0001 L CIN
F 3 "" H 4550 3300 50  0001 L CNN
	1    4550 3300
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B600503
P 4350 3550
F 0 "R1" V 4430 3550 50  0000 C CNN
F 1 "1K" V 4350 3550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4280 3550 50  0001 C CNN
F 3 "" H 4350 3550 50  0001 C CNN
	1    4350 3550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5B600704
P 5500 1800
F 0 "#PWR01" H 5500 1650 50  0001 C CNN
F 1 "+5V" H 5500 1940 50  0000 C CNN
F 2 "" H 5500 1800 50  0001 C CNN
F 3 "" H 5500 1800 50  0001 C CNN
	1    5500 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B600777
P 4650 3600
F 0 "#PWR02" H 4650 3350 50  0001 C CNN
F 1 "GND" H 4650 3450 50  0000 C CNN
F 2 "" H 4650 3600 50  0001 C CNN
F 3 "" H 4650 3600 50  0001 C CNN
	1    4650 3600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5B601347
P 3200 2500
F 0 "#PWR03" H 3200 2350 50  0001 C CNN
F 1 "+5V" H 3200 2640 50  0000 C CNN
F 2 "" H 3200 2500 50  0001 C CNN
F 3 "" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5B60139B
P 3600 2800
F 0 "#PWR04" H 3600 2550 50  0001 C CNN
F 1 "GND" H 3600 2650 50  0000 C CNN
F 2 "" H 3600 2800 50  0001 C CNN
F 3 "" H 3600 2800 50  0001 C CNN
	1    3600 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5B6020B6
P 3900 4300
F 0 "#PWR05" H 3900 4050 50  0001 C CNN
F 1 "GND" H 3900 4150 50  0000 C CNN
F 2 "" H 3900 4300 50  0001 C CNN
F 3 "" H 3900 4300 50  0001 C CNN
	1    3900 4300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 5B602125
P 4100 4400
F 0 "#PWR06" H 4100 4250 50  0001 C CNN
F 1 "+5V" H 4100 4540 50  0000 C CNN
F 2 "" H 4100 4400 50  0001 C CNN
F 3 "" H 4100 4400 50  0001 C CNN
	1    4100 4400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 5B603DDA
P 4850 2000
F 0 "#PWR07" H 4850 1850 50  0001 C CNN
F 1 "+5V" H 4850 2140 50  0000 C CNN
F 2 "" H 4850 2000 50  0001 C CNN
F 3 "" H 4850 2000 50  0001 C CNN
	1    4850 2000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B605AC5
P 5000 4500
F 0 "R2" V 5080 4500 50  0000 C CNN
F 1 "330" V 5000 4500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4930 4500 50  0001 C CNN
F 3 "" H 5000 4500 50  0001 C CNN
	1    5000 4500
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 5B60D6CA
P 3950 3700
F 0 "#FLG08" H 3950 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 3950 3850 50  0000 C CNN
F 2 "" H 3950 3700 50  0001 C CNN
F 3 "" H 3950 3700 50  0001 C CNN
	1    3950 3700
	1    0    0    -1  
$EndComp
$Comp
L AZ850-x-RESCUE-Shield_superior K1
U 1 1 5B8888DD
P 5900 2200
F 0 "K1" H 6550 2350 50  0000 L CNN
F 1 "AZ850-x" H 6550 2250 50  0000 L CNN
F 2 "Relays_THT:Relay_THT_5V" H 6450 2250 50  0001 C CNN
F 3 "" H 5700 2200 50  0001 C CNN
	1    5900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2050 4450 2250
Wire Wire Line
	4450 2250 3000 2250
Wire Wire Line
	3000 2250 3000 4700
Wire Wire Line
	3000 4700 3700 4700
Wire Wire Line
	3700 4700 3700 4500
Wire Wire Line
	3700 4400 3750 4400
Wire Wire Line
	3750 4400 3750 4750
Wire Wire Line
	3750 4750 2950 4750
Wire Wire Line
	2950 4750 2950 2200
Wire Wire Line
	2950 2200 4350 2200
Wire Wire Line
	4350 2200 4350 2050
Wire Wire Line
	4350 3300 4350 3400
Wire Wire Line
	4350 3700 4350 4400
Wire Wire Line
	4650 3600 4650 3500
Wire Wire Line
	3700 3700 3950 3700
Wire Wire Line
	4000 2500 4000 3800
Wire Wire Line
	4000 3800 3700 3800
Wire Wire Line
	3900 4300 4000 4300
Wire Wire Line
	4000 4300 4000 4500
Wire Wire Line
	4100 4500 4100 4400
Wire Wire Line
	3950 2050 3950 2150
Wire Wire Line
	3950 2150 2900 2150
Wire Wire Line
	2900 2150 2900 5000
Wire Wire Line
	2900 5000 5750 5000
Wire Wire Line
	4650 2050 4650 2100
Wire Wire Line
	4650 2100 4850 2100
Wire Wire Line
	4850 2100 4850 2000
Wire Wire Line
	5850 4250 5750 4250
Wire Wire Line
	5750 4250 5750 5000
Wire Wire Line
	5700 4500 5700 3850
Wire Wire Line
	5700 3850 5850 3850
Wire Wire Line
	5850 3750 5650 3750
Wire Wire Line
	5650 3750 5650 4400
Wire Wire Line
	5650 4400 4350 4400
Wire Wire Line
	5150 4500 5700 4500
Wire Wire Line
	4850 4500 4200 4500
Wire Wire Line
	4650 3100 4650 2500
Wire Wire Line
	4650 2500 5500 2500
Wire Wire Line
	5050 2050 5050 1900
Wire Wire Line
	5050 1900 5500 1900
Wire Wire Line
	5500 1900 5500 1800
Wire Wire Line
	5050 2350 5050 2500
Connection ~ 5050 2500
Wire Wire Line
	7000 2200 6700 2200
Wire Wire Line
	6700 2200 6700 2500
Wire Wire Line
	6700 2500 6300 2500
Wire Wire Line
	6800 2400 7000 2400
Wire Wire Line
	6800 2400 6800 1900
Wire Wire Line
	6800 1900 6400 1900
Wire Wire Line
	7000 2000 7000 1750
Wire Wire Line
	7000 1750 6200 1750
Wire Wire Line
	6200 1750 6200 1900
Wire Wire Line
	4550 2050 4550 2700
Connection ~ 3900 3700
Wire Wire Line
	3900 2700 3900 4300
Wire Wire Line
	4550 2700 3900 2700
$EndSCHEMATC
