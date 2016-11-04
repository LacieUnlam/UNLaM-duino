EESchema Schematic File Version 2
LIBS:power
LIBS:unlamduino-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "UNLaM-duino"
Date "2016-10-04"
Rev "002"
Comp "UNLaM-LACIE"
Comment1 "Rodrigo Javier Gomez, Gerardo Garcia, Diego Brengi"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328-P-RESCUE-UNLAMDIUNO IC2
U 1 1 57CF3282
P 4100 4650
F 0 "IC2" H 3350 5900 40  0000 L BNN
F 1 "ATMEGA328-P" H 4500 3250 40  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_LongPads" H 4100 4650 30  0001 C CIN
F 3 "" H 4100 4650 60  0000 C CNN
	1    4100 4650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 IOL1
U 1 1 57CF346A
P 7400 5500
F 0 "IOL1" H 7400 5950 50  0000 C CNN
F 1 "CONN_01X08" V 7500 5500 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 7400 5500 60  0001 C CNN
F 3 "" H 7400 5500 60  0000 C CNN
	1    7400 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 IOH1
U 1 1 57CF3A98
P 8850 4000
F 0 "IOH1" H 8850 4550 50  0000 C CNN
F 1 "CONN_01X10" V 8950 4000 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 8850 4000 60  0001 C CNN
F 3 "" H 8850 4000 60  0000 C CNN
	1    8850 4000
	1    0    0    -1  
$EndComp
Text Label 5500 4150 2    60   ~ 0
XTAL1
Text Label 5500 4250 2    60   ~ 0
XTAL2
Text Label 6600 5150 0    60   ~ 0
IO0
Text Label 6600 5250 0    60   ~ 0
IO1
Text Label 6600 5350 0    60   ~ 0
IO2
Text Label 6600 5450 0    60   ~ 0
IO3
Text Label 6600 5550 0    60   ~ 0
IO4
Text Label 6600 5750 0    60   ~ 0
IO6
Text Label 6600 5650 0    60   ~ 0
IO5
Text Label 6600 5850 0    60   ~ 0
IO7
Text Label 7000 4900 2    60   ~ 0
AD5/SCL
Text Label 7000 4800 2    60   ~ 0
AD4/SDA
Text Label 6800 4700 2    60   ~ 0
AD3
Text Label 6800 4600 2    60   ~ 0
AD2
Text Label 6800 4500 2    60   ~ 0
AD1
Text Label 6800 4400 2    60   ~ 0
AD0
Text Label 8450 3550 2    60   ~ 0
IO8
Text Label 8450 3650 2    60   ~ 0
IO9
Text Label 7600 3750 2    60   ~ 0
SS
Text Label 7600 3850 2    60   ~ 0
MOSI
Text Label 7600 3950 2    60   ~ 0
MISO
Text Label 9500 2100 0    60   ~ 0
MISO
Text Label 7600 4050 2    60   ~ 0
SCK
Text Label 9500 2200 0    60   ~ 0
SCK
$Comp
L CONN_02X03 ICSP2
U 1 1 57D85557
P 10100 2200
F 0 "ICSP2" H 10100 2400 50  0000 C CNN
F 1 "CONN_02X03" H 10100 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 10100 1000 60  0001 C CNN
F 3 "" H 10100 1000 60  0000 C CNN
	1    10100 2200
	1    0    0    -1  
$EndComp
Text Label 10700 2200 2    60   ~ 0
MOSI
Text Label 9500 2300 0    60   ~ 0
RESET
Text Label 9400 5650 0    60   ~ 0
XTAL1
Text Label 9400 5950 0    60   ~ 0
XTAL2
$Comp
L +5V #PWR01
U 1 1 57D85B23
P 10400 1850
F 0 "#PWR01" H 10400 1700 50  0001 C CNN
F 1 "+5V" H 10400 1990 50  0000 C CNN
F 2 "" H 10400 1850 60  0000 C CNN
F 3 "" H 10400 1850 60  0000 C CNN
	1    10400 1850
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR02
U 1 1 57D85C25
P 10400 2450
F 0 "#PWR02" H 10400 2200 50  0001 C CNN
F 1 "GND" H 10400 2300 50  0000 C CNN
F 2 "" H 10400 2450 60  0000 C CNN
F 3 "" H 10400 2450 60  0000 C CNN
	1    10400 2450
	1    0    0    -1  
$EndComp
Text Label 8050 4350 0    60   ~ 0
AD5/SCL
Text Label 8050 4450 0    60   ~ 0
AD4/SDA
Text Label 8050 4250 0    60   ~ 0
AREF
$Comp
L C_Small C10
U 1 1 57D85FA7
P 2600 4600
F 0 "C10" H 2750 4700 50  0000 L CNN
F 1 "100nF" H 2750 4600 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 2600 4600 60  0001 C CNN
F 3 "" H 2600 4600 60  0000 C CNN
	1    2600 4600
	1    0    0    1   
$EndComp
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR03
U 1 1 57D8604C
P 2600 4700
F 0 "#PWR03" H 2600 4450 50  0001 C CNN
F 1 "GND" H 2600 4550 50  0000 C CNN
F 2 "" H 2600 4700 60  0000 C CNN
F 3 "" H 2600 4700 60  0000 C CNN
	1    2600 4700
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR04
U 1 1 57D860B8
P 8450 4150
F 0 "#PWR04" H 8450 3900 50  0001 C CNN
F 1 "GND" H 8450 4000 50  0000 C CNN
F 2 "" H 8450 4150 60  0000 C CNN
F 3 "" H 8450 4150 60  0000 C CNN
	1    8450 4150
	0    1    -1   0   
$EndComp
Text Label 8450 4150 0    60   ~ 0
GND
$Comp
L Led_Small-RESCUE-UNLAMDIUNO D4
U 1 1 57D8638C
P 7200 2550
F 0 "D4" H 7150 2650 50  0000 L CNN
F 1 "Verde" H 7050 2470 50  0000 L CNN
F 2 "LEDs:LED-5MM" V 7200 2550 60  0001 C CNN
F 3 "" V 7200 2550 60  0000 C CNN
	1    7200 2550
	0    -1   1    0   
$EndComp
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR05
U 1 1 57D8643E
P 7200 2750
F 0 "#PWR05" H 7200 2500 50  0001 C CNN
F 1 "GND" H 7200 2600 50  0000 C CNN
F 2 "" H 7200 2750 60  0000 C CNN
F 3 "" H 7200 2750 60  0000 C CNN
	1    7200 2750
	-1   0    0    -1  
$EndComp
$Comp
L R-RESCUE-UNLAMDIUNO R8
U 1 1 57F3F797
P 4850 6400
F 0 "R8" V 4750 6400 50  0000 C CNN
F 1 "1K" V 4850 6400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4780 6400 50  0001 C CNN
F 3 "" H 4850 6400 50  0000 C CNN
	1    4850 6400
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-UNLAMDIUNO R9
U 1 1 57F3F7F4
P 4850 6500
F 0 "R9" V 4930 6500 50  0000 C CNN
F 1 "1K" V 4850 6500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4780 6500 50  0001 C CNN
F 3 "" H 4850 6500 50  0000 C CNN
	1    4850 6500
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR06
U 1 1 57F3FBE1
P 3150 6100
F 0 "#PWR06" H 3150 5850 50  0001 C CNN
F 1 "GND" H 3150 5950 50  0000 C CNN
F 2 "" H 3150 6100 50  0000 C CNN
F 3 "" H 3150 6100 50  0000 C CNN
	1    3150 6100
	1    0    0    -1  
$EndComp
Text Label 2750 4150 0    60   ~ 0
AREF
$Comp
L C-RESCUE-UNLAMDIUNO C7
U 1 1 57F3FF06
P 2250 4100
F 0 "C7" H 2275 4200 50  0000 L CNN
F 1 "100nF" H 2275 4000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 2288 3950 50  0001 C CNN
F 3 "" H 2250 4100 50  0000 C CNN
	1    2250 4100
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-UNLAMDIUNO C5
U 1 1 57F3FFB1
P 1950 4100
F 0 "C5" H 1975 4200 50  0000 L CNN
F 1 "100nF" H 1975 4000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 1988 3950 50  0001 C CNN
F 3 "" H 1950 4100 50  0000 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
$Comp
L L_Small L2
U 1 1 57F40063
P 2100 3850
F 0 "L2" V 2200 3900 50  0000 L CNN
F 1 "L_Small" V 2200 3550 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 2100 3850 50  0001 C CNN
F 3 "" H 2100 3850 50  0000 C CNN
	1    2100 3850
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR07
U 1 1 57F40A89
P 1950 4350
F 0 "#PWR07" H 1950 4100 50  0001 C CNN
F 1 "GND" H 1950 4200 50  0000 C CNN
F 2 "" H 1950 4350 50  0000 C CNN
F 3 "" H 1950 4350 50  0000 C CNN
	1    1950 4350
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR08
U 1 1 57F40AB9
P 2250 4350
F 0 "#PWR08" H 2250 4100 50  0001 C CNN
F 1 "GND" H 2250 4200 50  0000 C CNN
F 2 "" H 2250 4350 50  0000 C CNN
F 3 "" H 2250 4350 50  0000 C CNN
	1    2250 4350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 57F422A3
P 1950 3500
F 0 "#PWR09" H 1950 3350 50  0001 C CNN
F 1 "+5V" H 1950 3640 50  0000 C CNN
F 2 "" H 1950 3500 60  0000 C CNN
F 3 "" H 1950 3500 60  0000 C CNN
	1    1950 3500
	1    0    0    -1  
$EndComp
$Comp
L Crystal_Small Y2
U 1 1 57F4B05B
P 9850 5800
F 0 "Y2" V 9550 5800 50  0000 C CNN
F 1 "16MHz" V 9650 5800 50  0000 C CNN
F 2 "Crystals:Crystal_HC50-U_Vertical" H 9850 5800 50  0001 C CNN
F 3 "" H 9850 5800 50  0000 C CNN
	1    9850 5800
	0    -1   1    0   
$EndComp
$Comp
L C-RESCUE-UNLAMDIUNO C20
U 1 1 57F4B061
P 10150 5650
F 0 "C20" V 9950 5600 50  0000 L CNN
F 1 "22pF" V 9850 5600 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 10188 5500 50  0001 C CNN
F 3 "" H 10150 5650 50  0000 C CNN
	1    10150 5650
	0    -1   1    0   
$EndComp
$Comp
L C-RESCUE-UNLAMDIUNO C21
U 1 1 57F4B067
P 10150 5950
F 0 "C21" V 10300 5900 50  0000 L CNN
F 1 "22pF" V 10400 5900 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 10188 5800 50  0001 C CNN
F 3 "" H 10150 5950 50  0000 C CNN
	1    10150 5950
	0    -1   1    0   
$EndComp
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR010
U 1 1 57F4B073
P 10400 6000
F 0 "#PWR010" H 10400 5750 50  0001 C CNN
F 1 "GND" H 10400 5850 50  0000 C CNN
F 2 "" H 10400 6000 50  0000 C CNN
F 3 "" H 10400 6000 50  0000 C CNN
	1    10400 6000
	-1   0    0    -1  
$EndComp
Text Label 2200 6100 2    60   ~ 0
RESET
$Comp
L R-RESCUE-UNLAMDIUNO RN1
U 1 1 57F4B570
P 1550 5800
F 0 "RN1" V 1450 5800 50  0000 C CNN
F 1 "10K" V 1550 5800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 1480 5800 50  0001 C CNN
F 3 "" H 1550 5800 50  0000 C CNN
	1    1550 5800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 57F4B8F4
P 1800 5450
F 0 "#PWR011" H 1800 5300 50  0001 C CNN
F 1 "+5V" H 1800 5590 50  0000 C CNN
F 2 "" H 1800 5450 50  0000 C CNN
F 3 "" H 1800 5450 50  0000 C CNN
	1    1800 5450
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-UNLAMDIUNO C6
U 1 1 57F4C2F6
P 1550 6550
F 0 "C6" H 1300 6550 50  0000 L CNN
F 1 "100nF" H 1300 6650 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 1588 6400 50  0001 C CNN
F 3 "" H 1550 6550 50  0000 C CNN
	1    1550 6550
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH RESET1
U 1 1 57F4D9C0
P 1800 6550
F 0 "RESET1" V 1750 6850 50  0000 C CNN
F 1 "SW_PUSH" V 1650 6850 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_SMALL" H 1800 6550 50  0001 C CNN
F 3 "" H 1800 6550 50  0000 C CNN
	1    1800 6550
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR012
U 1 1 57F4DC29
P 1800 6950
F 0 "#PWR012" H 1800 6700 50  0001 C CNN
F 1 "GND" H 1800 6800 50  0000 C CNN
F 2 "" H 1800 6950 50  0000 C CNN
F 3 "" H 1800 6950 50  0000 C CNN
	1    1800 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5150 7200 5150
Wire Wire Line
	5100 5250 7200 5250
Wire Wire Line
	5100 5350 7200 5350
Wire Wire Line
	5100 5450 7200 5450
Wire Wire Line
	5100 5550 7200 5550
Wire Wire Line
	5100 5650 7200 5650
Wire Wire Line
	5100 5750 7200 5750
Wire Wire Line
	5100 5850 7200 5850
Wire Wire Line
	5100 4400 7200 4400
Wire Wire Line
	5100 4500 7200 4500
Wire Wire Line
	5100 4600 7200 4600
Wire Wire Line
	5100 4700 7200 4700
Wire Wire Line
	5100 4800 7200 4800
Wire Wire Line
	5100 4900 7200 4900
Wire Wire Line
	5100 3550 8650 3550
Wire Wire Line
	5100 3650 8650 3650
Wire Wire Line
	5100 3750 8650 3750
Wire Wire Line
	5100 3850 8650 3850
Wire Wire Line
	5100 3950 8650 3950
Wire Wire Line
	5100 4050 8650 4050
Wire Wire Line
	5100 4150 5500 4150
Wire Wire Line
	5500 4250 5100 4250
Wire Wire Line
	9850 2100 9500 2100
Wire Wire Line
	9500 2200 9850 2200
Wire Wire Line
	10350 2200 10700 2200
Wire Wire Line
	9850 2300 9500 2300
Wire Wire Line
	10400 1850 10400 2100
Wire Wire Line
	10400 2100 10350 2100
Wire Wire Line
	10350 2300 10400 2300
Wire Wire Line
	10400 2300 10400 2450
Wire Wire Line
	8650 4450 8050 4450
Wire Wire Line
	8050 4350 8650 4350
Wire Wire Line
	8050 4250 8650 4250
Wire Wire Line
	2600 4500 2600 4150
Wire Wire Line
	8450 4150 8650 4150
Wire Wire Line
	5650 1900 7350 1900
Wire Wire Line
	7200 1900 7200 2050
Connection ~ 7200 1900
Wire Wire Line
	7200 2350 7200 2450
Wire Wire Line
	7200 2650 7200 2750
Wire Wire Line
	5600 5150 5600 6400
Wire Wire Line
	5600 6400 5000 6400
Connection ~ 5600 5150
Wire Wire Line
	5700 5250 5700 6500
Wire Wire Line
	5700 6500 5000 6500
Connection ~ 5700 5250
Wire Wire Line
	3200 5750 3150 5750
Wire Wire Line
	3150 5750 3150 6100
Wire Wire Line
	3200 5850 3150 5850
Connection ~ 3150 5850
Wire Wire Line
	1950 3550 3200 3550
Wire Wire Line
	2600 4150 3200 4150
Wire Wire Line
	2200 3850 3200 3850
Connection ~ 2250 3850
Wire Wire Line
	1950 3850 2000 3850
Wire Wire Line
	1950 3500 1950 3950
Connection ~ 1950 3550
Wire Wire Line
	2250 4250 2250 4350
Wire Wire Line
	1950 4250 1950 4350
Wire Wire Line
	9400 5650 10000 5650
Wire Wire Line
	9400 5950 10000 5950
Wire Wire Line
	10300 5650 10400 5650
Wire Wire Line
	10400 5650 10400 6000
Wire Wire Line
	10300 5950 10400 5950
Connection ~ 10400 5950
Wire Wire Line
	1550 5950 1550 6400
Wire Wire Line
	1550 6100 2200 6100
Wire Wire Line
	1800 5450 1800 5700
Connection ~ 1550 6100
Wire Wire Line
	1800 6000 1800 6250
Connection ~ 1800 6100
Wire Wire Line
	1800 6850 1800 6950
$Comp
L CONN_01X08 P3
U 1 1 57F5793B
P 10500 3950
F 0 "P3" H 10500 4500 50  0000 C CNN
F 1 "CONN_01X08" V 10600 3950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 10500 3950 50  0001 C CNN
F 3 "" H 10500 3950 50  0000 C CNN
	1    10500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3800 10000 3800
Wire Wire Line
	10300 3900 9750 3900
Wire Wire Line
	10300 4100 9700 4100
Wire Wire Line
	10300 4200 9700 4200
Wire Wire Line
	10300 4300 10000 4300
Text Label 10000 4300 0    60   ~ 0
VIN
NoConn ~ 10300 3600
Text Label 10000 3800 0    60   ~ 0
RESET
Text Notes 3200 1500 0    157  ~ 31
FUENTE DE ALIMENTACION
Connection ~ 6500 1900
Wire Wire Line
	6500 1900 6500 2150
Connection ~ 6200 1900
Wire Wire Line
	6200 2000 6200 1900
Wire Wire Line
	6150 2000 6200 2000
Wire Wire Line
	6800 1700 6800 2150
Connection ~ 5800 2000
Wire Wire Line
	5800 2000 5800 2150
Wire Wire Line
	5650 2000 5950 2000
Wire Wire Line
	5800 2450 5800 2550
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR013
U 1 1 57F46B49
P 5800 2550
F 0 "#PWR013" H 5800 2300 50  0001 C CNN
F 1 "GND" H 5800 2400 50  0000 C CNN
F 2 "" H 5800 2550 50  0000 C CNN
F 3 "" H 5800 2550 50  0000 C CNN
	1    5800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2450 6800 2550
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR014
U 1 1 57F4692C
P 6800 2550
F 0 "#PWR014" H 6800 2300 50  0001 C CNN
F 1 "GND" H 6800 2400 50  0000 C CNN
F 2 "" H 6800 2550 50  0000 C CNN
F 3 "" H 6800 2550 50  0000 C CNN
	1    6800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2450 6500 2550
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR015
U 1 1 57F46925
P 6500 2550
F 0 "#PWR015" H 6500 2300 50  0001 C CNN
F 1 "GND" H 6500 2400 50  0000 C CNN
F 2 "" H 6500 2550 50  0000 C CNN
F 3 "" H 6500 2550 50  0000 C CNN
	1    6500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2450 3850 2550
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR016
U 1 1 57F46813
P 3850 2550
F 0 "#PWR016" H 3850 2300 50  0001 C CNN
F 1 "GND" H 3850 2400 50  0000 C CNN
F 2 "" H 3850 2550 50  0000 C CNN
F 3 "" H 3850 2550 50  0000 C CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2450 3550 2550
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR017
U 1 1 57F467D5
P 3550 2550
F 0 "#PWR017" H 3550 2300 50  0001 C CNN
F 1 "GND" H 3550 2400 50  0000 C CNN
F 2 "" H 3550 2550 50  0000 C CNN
F 3 "" H 3550 2550 50  0000 C CNN
	1    3550 2550
	1    0    0    -1  
$EndComp
Connection ~ 3550 1900
Wire Wire Line
	3550 2150 3550 1900
Connection ~ 3850 1900
Wire Wire Line
	3850 1900 3850 2150
Wire Wire Line
	3400 1900 3950 1900
$Comp
L D D5
U 1 1 57F45F06
P 3250 1900
F 0 "D5" H 3250 2000 50  0000 C CNN
F 1 "1N4007" H 3250 1800 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 3250 1900 50  0001 C CNN
F 3 "" H 3250 1900 50  0000 C CNN
	1    3250 1900
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-UNLAMDIUNO C2
U 1 1 57F45E27
P 3850 2300
F 0 "C2" H 3875 2400 50  0000 L CNN
F 1 "100nF" H 3875 2200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 3888 2150 50  0001 C CNN
F 3 "" H 3850 2300 50  0000 C CNN
	1    3850 2300
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-UNLAMDIUNO C1
U 1 1 57F45E21
P 3550 2300
F 0 "C1" H 3575 2400 50  0000 L CNN
F 1 "100uF 35V" H 3100 2150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 3550 2300 50  0001 C CNN
F 3 "" H 3550 2300 50  0000 C CNN
	1    3550 2300
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-UNLAMDIUNO C4
U 1 1 57F45722
P 6800 2300
F 0 "C4" H 6825 2400 50  0000 L CNN
F 1 "100nF" H 6850 2200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6838 2150 50  0001 C CNN
F 3 "" H 6800 2300 50  0000 C CNN
	1    6800 2300
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-UNLAMDIUNO C3
U 1 1 57F45673
P 6500 2300
F 0 "C3" H 6525 2400 50  0000 L CNN
F 1 "100uF 16v" H 6250 2150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 6500 2300 50  0001 C CNN
F 3 "" H 6500 2300 50  0000 C CNN
	1    6500 2300
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D6
U 1 1 57F454CA
P 5800 2300
F 0 "D6" H 5800 2400 50  0000 C CNN
F 1 "1N5819" H 5800 2200 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 5800 2300 50  0001 C CNN
F 3 "" H 5800 2300 50  0000 C CNN
	1    5800 2300
	0    1    1    0   
$EndComp
$Comp
L L_Small L3
U 1 1 57F450BF
P 6050 2000
F 0 "L3" V 6000 1950 50  0000 L CNN
F 1 "330uHy" V 5900 1850 50  0000 L CNN
F 2 "Choke_Toroid_ThroughHole:Choke_Toroid_5x10mm_Vertical" H 6050 2000 50  0001 C CNN
F 3 "" H 6050 2000 50  0000 C CNN
	1    6050 2000
	0    -1   -1   0   
$EndComp
$Comp
L LM2576 U1
U 1 1 57F44886
P 4800 1950
F 0 "U1" H 4300 2350 50  0000 C CNN
F 1 "LM2576" H 4400 2250 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:Pentawatt_Neutral_Staggered_Verical_TO220-5-T05D" H 4800 1950 79  0001 C CNN
F 3 "" H 4800 1950 79  0001 C CNN
	1    4800 1950
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR018
U 1 1 57F47B4E
P 4800 2550
F 0 "#PWR018" H 4800 2300 50  0001 C CNN
F 1 "GND" H 4800 2400 50  0000 C CNN
F 2 "" H 4800 2550 50  0000 C CNN
F 3 "" H 4800 2550 50  0000 C CNN
	1    4800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2500 4850 2500
Wire Wire Line
	4800 2500 4800 2550
Connection ~ 4800 2500
$Comp
L +5V #PWR019
U 1 1 57F47FE5
P 6800 1700
F 0 "#PWR019" H 6800 1550 50  0001 C CNN
F 1 "+5V" H 6800 1840 50  0000 C CNN
F 2 "" H 6800 1700 50  0000 C CNN
F 3 "" H 6800 1700 50  0000 C CNN
	1    6800 1700
	1    0    0    -1  
$EndComp
Connection ~ 6800 1900
Text Label 2750 1900 0    79   ~ 0
VIN
Wire Wire Line
	9850 5700 9850 5650
Connection ~ 9850 5650
Wire Wire Line
	9850 5900 9850 5950
Connection ~ 9850 5950
Text Label 5450 5000 2    60   ~ 0
RESET
Wire Wire Line
	5100 5000 5450 5000
Wire Wire Line
	2000 1900 3100 1900
$Comp
L R-RESCUE-UNLAMDIUNO R1
U 1 1 57F5BC7A
P 7200 2200
F 0 "R1" H 7100 2050 50  0000 C CNN
F 1 "470" V 7200 2200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 7130 2200 50  0001 C CNN
F 3 "" H 7200 2200 50  0000 C CNN
	1    7200 2200
	1    0    0    1   
$EndComp
$Comp
L D D2
U 1 1 57F5C034
P 1800 5850
F 0 "D2" V 1700 6050 50  0000 C CNN
F 1 "1N4007" V 1800 6100 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 1800 5850 50  0001 C CNN
F 3 "" H 1800 5850 50  0000 C CNN
	1    1800 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 3700 10300 3700
Wire Wire Line
	9700 4100 9700 4300
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR020
U 1 1 57F5CA97
P 9700 4300
F 0 "#PWR020" H 9700 4050 50  0001 C CNN
F 1 "GND" H 9700 4150 50  0000 C CNN
F 2 "" H 9700 4300 50  0000 C CNN
F 3 "" H 9700 4300 50  0000 C CNN
	1    9700 4300
	1    0    0    -1  
$EndComp
Connection ~ 9700 4200
Wire Wire Line
	1550 6700 1550 6900
Wire Wire Line
	1550 6900 1800 6900
Connection ~ 1800 6900
Wire Wire Line
	1550 5650 1550 5500
Wire Wire Line
	1550 5500 1800 5500
Connection ~ 1800 5500
Text Label 8500 3750 2    60   ~ 0
IO10
Text Label 8500 3850 2    60   ~ 0
IO11
Text Label 8500 3950 2    60   ~ 0
IO12
Text Label 8500 4050 2    60   ~ 0
IO13
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR021
U 1 1 57F5ED62
P 2750 2200
F 0 "#PWR021" H 2750 1950 50  0001 C CNN
F 1 "GND" H 2750 2050 50  0000 C CNN
F 2 "" H 2750 2200 50  0000 C CNN
F 3 "" H 2750 2200 50  0000 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2000 2750 2000
Wire Wire Line
	2750 2000 2750 2200
Wire Wire Line
	4150 6400 4700 6400
Wire Wire Line
	4150 6500 4700 6500
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR022
U 1 1 57F5F305
P 4450 6600
F 0 "#PWR022" H 4450 6350 50  0001 C CNN
F 1 "GND" H 4450 6450 50  0000 C CNN
F 2 "" H 4450 6600 50  0000 C CNN
F 3 "" H 4450 6600 50  0000 C CNN
	1    4450 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6600 4450 6600
$Comp
L +5V #PWR023
U 1 1 57F5F44A
P 4450 6300
F 0 "#PWR023" H 4450 6150 50  0001 C CNN
F 1 "+5V" H 4450 6440 50  0000 C CNN
F 2 "" H 4450 6300 50  0000 C CNN
F 3 "" H 4450 6300 50  0000 C CNN
	1    4450 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6300 4150 6300
$Comp
L CONN_01X06 AD1
U 1 1 57F5F689
P 7400 4650
F 0 "AD1" H 7400 5000 50  0000 C CNN
F 1 "CONN_01X06" V 7500 4650 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 7400 4650 60  0001 C CNN
F 3 "" H 7400 4650 60  0000 C CNN
	1    7400 4650
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-UNLAMDIUNO RN2
U 1 1 57F5F7BF
P 7850 4350
F 0 "RN2" H 7750 4200 50  0000 C CNN
F 1 "1K" V 7850 4350 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 7780 4350 50  0001 C CNN
F 3 "" H 7850 4350 50  0000 C CNN
	1    7850 4350
	1    0    0    1   
$EndComp
$Comp
L Led_Small-RESCUE-UNLAMDIUNO DR1
U 1 1 57F5F872
P 7850 4700
F 0 "DR1" H 7800 4800 50  0000 L CNN
F 1 "Rojo" H 7700 4620 50  0000 L CNN
F 2 "LEDs:LED-5MM" V 7850 4700 60  0001 C CNN
F 3 "" V 7850 4700 60  0000 C CNN
	1    7850 4700
	0    -1   1    0   
$EndComp
Wire Wire Line
	7850 4500 7850 4600
Wire Wire Line
	7850 4200 7850 4050
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR024
U 1 1 57F5FB8C
P 7850 4900
F 0 "#PWR024" H 7850 4650 50  0001 C CNN
F 1 "GND" H 7850 4750 50  0000 C CNN
F 2 "" H 7850 4900 50  0000 C CNN
F 3 "" H 7850 4900 50  0000 C CNN
	1    7850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4800 7850 4900
Connection ~ 7850 4050
$Comp
L PWR_FLAG #FLG025
U 1 1 57F5C2D3
P 2850 3450
F 0 "#FLG025" H 2850 3545 30  0001 C CNN
F 1 "PWR_FLAG" H 2850 3630 30  0000 C CNN
F 2 "" H 2850 3450 79  0000 C CNN
F 3 "" H 2850 3450 79  0000 C CNN
	1    2850 3450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG026
U 1 1 57F5C439
P 2850 3800
F 0 "#FLG026" H 2850 3895 30  0001 C CNN
F 1 "PWR_FLAG" H 2850 3980 30  0000 C CNN
F 2 "" H 2850 3800 79  0000 C CNN
F 3 "" H 2850 3800 79  0000 C CNN
	1    2850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3450 2850 3550
Connection ~ 2850 3550
Wire Wire Line
	2850 3800 2850 3850
Connection ~ 2850 3850
$Comp
L PWR_FLAG #FLG027
U 1 1 57F5C776
P 3750 1800
F 0 "#FLG027" H 3750 1895 30  0001 C CNN
F 1 "PWR_FLAG" H 3750 1980 30  0000 C CNN
F 2 "" H 3750 1800 79  0000 C CNN
F 3 "" H 3750 1800 79  0000 C CNN
	1    3750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1800 3750 1900
Connection ~ 3750 1900
$Comp
L PWR_FLAG #FLG028
U 1 1 57F5CB5E
P 2950 2150
F 0 "#FLG028" H 2950 2245 30  0001 C CNN
F 1 "PWR_FLAG" H 2950 2330 30  0000 C CNN
F 2 "" H 2950 2150 79  0000 C CNN
F 3 "" H 2950 2150 79  0000 C CNN
	1    2950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2150 2750 2150
Connection ~ 2750 2150
$Comp
L CONN_01X02 PWR1
U 1 1 57F59B29
P 1800 1950
F 0 "PWR1" H 1800 2100 50  0000 C CNN
F 1 "CONN_01X02" V 1900 1950 50  0001 C CNN
F 2 "Connect:bornier2" H 1800 1950 50  0001 C CNN
F 3 "" H 1800 1950 50  0000 C CNN
	1    1800 1950
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 PSerial1
U 1 1 57F59FA2
P 3950 6450
F 0 "PSerial1" H 3950 6700 50  0000 C CNN
F 1 "CONN_01X04" V 4050 6450 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 3950 6450 50  0001 C CNN
F 3 "" H 3950 6450 50  0000 C CNN
	1    3950 6450
	-1   0    0    -1  
$EndComp
$Comp
L JACK_2P JP1
U 1 1 57F5A399
P 2050 1450
F 0 "JP1" H 1700 1250 50  0000 C CNN
F 1 "JACK_2P" H 1900 1700 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 2050 1450 50  0001 C CNN
F 3 "" H 2050 1450 50  0000 C CNN
	1    2050 1450
	1    0    0    1   
$EndComp
Wire Wire Line
	2500 1350 2600 1350
Wire Wire Line
	2600 1350 2600 1900
Connection ~ 2600 1900
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR029
U 1 1 57F5A7AF
P 2500 1700
F 0 "#PWR029" H 2500 1450 50  0001 C CNN
F 1 "GND" H 2500 1550 50  0000 C CNN
F 2 "" H 2500 1700 50  0000 C CNN
F 3 "" H 2500 1700 50  0000 C CNN
	1    2500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1600 2500 1700
Wire Wire Line
	2500 1450 2600 1450
Connection ~ 2600 1450
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR030
U 1 1 57F5BA04
P 7650 2400
F 0 "#PWR030" H 7650 2150 50  0001 C CNN
F 1 "GND" H 7650 2250 50  0000 C CNN
F 2 "" H 7650 2400 60  0000 C CNN
F 3 "" H 7650 2400 60  0000 C CNN
	1    7650 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7650 2200 7650 2400
Wire Wire Line
	8050 1900 8050 2150
Wire Wire Line
	8350 1700 8350 2150
Wire Wire Line
	8350 2450 8350 2550
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR031
U 1 1 57F5C1ED
P 8350 2550
F 0 "#PWR031" H 8350 2300 50  0001 C CNN
F 1 "GND" H 8350 2400 50  0000 C CNN
F 2 "" H 8350 2550 50  0000 C CNN
F 3 "" H 8350 2550 50  0000 C CNN
	1    8350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2450 8050 2550
$Comp
L GND-RESCUE-UNLAMDIUNO #PWR032
U 1 1 57F5C1F4
P 8050 2550
F 0 "#PWR032" H 8050 2300 50  0001 C CNN
F 1 "GND" H 8050 2400 50  0000 C CNN
F 2 "" H 8050 2550 50  0000 C CNN
F 3 "" H 8050 2550 50  0000 C CNN
	1    8050 2550
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-UNLAMDIUNO C9
U 1 1 57F5C1FA
P 8350 2300
F 0 "C9" H 8375 2400 50  0000 L CNN
F 1 "100nF" H 8400 2200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 8388 2150 50  0001 C CNN
F 3 "" H 8350 2300 50  0000 C CNN
	1    8350 2300
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-UNLAMDIUNO C8
U 1 1 57F5C200
P 8050 2300
F 0 "C8" H 8075 2400 50  0000 L CNN
F 1 "100uF 16v" H 7800 2150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D6.3_L11.2_P2.5" H 8050 2300 50  0001 C CNN
F 3 "" H 8050 2300 50  0000 C CNN
	1    8050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1900 8350 1900
Connection ~ 8350 1900
Connection ~ 8050 1900
$Comp
L +3V3 #PWR033
U 1 1 57F5C683
P 8350 1700
F 0 "#PWR033" H 8350 1550 50  0001 C CNN
F 1 "+3V3" H 8350 1840 50  0000 C CNN
F 2 "" H 8350 1700 50  0000 C CNN
F 3 "" H 8350 1700 50  0000 C CNN
	1    8350 1700
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR034
U 1 1 57F5C98D
P 9750 3900
F 0 "#PWR034" H 9750 3750 50  0001 C CNN
F 1 "+3V3" H 9750 4040 50  0000 C CNN
F 2 "" H 9750 3900 50  0000 C CNN
F 3 "" H 9750 3900 50  0000 C CNN
	1    9750 3900
	1    0    0    -1  
$EndComp
$Comp
L AP111733 U2
U 1 1 57F5E03B
P 7650 1900
F 0 "U2" H 7750 1650 50  0000 C CNN
F 1 "AP111733" H 7650 2150 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 7650 1550 50  0001 C CNN
F 3 "" H 7750 1650 50  0000 C CNN
	1    7650 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P A1
U 1 1 58080CA5
P 900 2650
F 0 "A1" H 900 2920 50  0000 C CNN
F 1 "Agujero" H 900 2850 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1100 2650 50  0001 C CNN
F 3 "" H 1100 2650 50  0000 C CNN
	1    900  2650
	1    0    0    -1  
$EndComp
NoConn ~ 900  2650
NoConn ~ 2750 2000
$Comp
L TEST_1P A3
U 1 1 58080F61
P 1250 2650
F 0 "A3" H 1250 2920 50  0000 C CNN
F 1 "Agujero" H 1250 2850 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1450 2650 50  0001 C CNN
F 3 "" H 1450 2650 50  0000 C CNN
	1    1250 2650
	1    0    0    -1  
$EndComp
NoConn ~ 1250 2650
$Comp
L TEST_1P A2
U 1 1 58080FE0
P 900 3000
F 0 "A2" H 900 3270 50  0000 C CNN
F 1 "Agujero" H 900 3200 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1100 3000 50  0001 C CNN
F 3 "" H 1100 3000 50  0000 C CNN
	1    900  3000
	1    0    0    -1  
$EndComp
NoConn ~ 900  3000
$Comp
L TEST_1P A4
U 1 1 58080FE7
P 1250 3000
F 0 "A4" H 1250 3270 50  0000 C CNN
F 1 "Agujero" H 1250 3200 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1450 3000 50  0001 C CNN
F 3 "" H 1450 3000 50  0000 C CNN
	1    1250 3000
	1    0    0    -1  
$EndComp
NoConn ~ 1250 3000
Connection ~ 1950 3850
Wire Wire Line
	2250 3850 2250 3950
$Comp
L +5V #PWR035
U 1 1 581D0696
P 9550 3700
F 0 "#PWR035" H 9550 3550 50  0001 C CNN
F 1 "+5V" H 9550 3840 50  0000 C CNN
F 2 "" H 9550 3700 50  0000 C CNN
F 3 "" H 9550 3700 50  0000 C CNN
	1    9550 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR036
U 1 1 581D095C
P 9550 4000
F 0 "#PWR036" H 9550 3850 50  0001 C CNN
F 1 "+5V" H 9550 4140 50  0000 C CNN
F 2 "" H 9550 4000 50  0000 C CNN
F 3 "" H 9550 4000 50  0000 C CNN
	1    9550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4000 9550 4000
Text Notes 9050 1750 0    157  ~ 31
PROGRAMACIÓN\nISP
$Comp
L TEST_1P A5
U 1 1 581D2690
P 900 3400
F 0 "A5" H 900 3670 50  0000 C CNN
F 1 "Agujero" H 900 3600 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1100 3400 50  0001 C CNN
F 3 "" H 1100 3400 50  0000 C CNN
	1    900  3400
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P A8
U 1 1 581D272E
P 1250 3400
F 0 "A8" H 1250 3670 50  0000 C CNN
F 1 "Agujero" H 1250 3600 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1450 3400 50  0001 C CNN
F 3 "" H 1450 3400 50  0000 C CNN
	1    1250 3400
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P A6
U 1 1 581D2881
P 900 3800
F 0 "A6" H 900 4070 50  0000 C CNN
F 1 "Agujero" H 900 4000 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1100 3800 50  0001 C CNN
F 3 "" H 1100 3800 50  0000 C CNN
	1    900  3800
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P A9
U 1 1 581D2925
P 1250 3800
F 0 "A9" H 1250 4070 50  0000 C CNN
F 1 "Agujero" H 1250 4000 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1450 3800 50  0001 C CNN
F 3 "" H 1450 3800 50  0000 C CNN
	1    1250 3800
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P A7
U 1 1 581D2A84
P 900 4200
F 0 "A7" H 900 4470 50  0000 C CNN
F 1 "Agujero" H 900 4400 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1100 4200 50  0001 C CNN
F 3 "" H 1100 4200 50  0000 C CNN
	1    900  4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
