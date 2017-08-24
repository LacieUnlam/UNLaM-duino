EESchema Schematic File Version 2
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
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:shield_arduino
LIBS:l293
LIBS:motdrivhc05-cache
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
L ARDUINO_as_UNO SH?
U 1 1 599E0363
P 3000 2700
F 0 "SH?" H 3025 1475 60  0000 C CNN
F 1 "ARDUINO_as_UNO" H 3025 4050 60  0000 C CNN
F 2 "" H 2800 2475 60  0000 C CNN
F 3 "" H 2800 2475 60  0000 C CNN
	1    3000 2700
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x04 J?
U 1 1 599E0DDC
P 9075 2325
F 0 "J?" H 9075 2775 50  0000 C TNN
F 1 "Screw_Terminal_1x04" V 8925 2325 50  0000 C TNN
F 2 "" H 9075 1900 50  0001 C CNN
F 3 "" H 9050 2525 50  0001 C CNN
	1    9075 2325
	-1   0    0    -1  
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 599E0E36
P 7100 1675
F 0 "D?" V 7150 1725 50  0000 L CNN
F 1 "1N5819" V 7000 1700 50  0000 L CNN
F 2 "" V 7100 1675 50  0001 C CNN
F 3 "" V 7100 1675 50  0001 C CNN
	1    7100 1675
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 599E115A
P 7350 1675
F 0 "D?" V 7400 1525 50  0000 L CNN
F 1 "1N5819" V 7250 1350 50  0000 L CNN
F 2 "" V 7350 1675 50  0001 C CNN
F 3 "" V 7350 1675 50  0001 C CNN
	1    7350 1675
	0    -1   1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 599E186B
P 1600 1300
F 0 "#PWR?" H 1600 1150 50  0001 C CNN
F 1 "VCC" H 1600 1450 50  0000 C CNN
F 2 "" H 1600 1300 50  0001 C CNN
F 3 "" H 1600 1300 50  0001 C CNN
	1    1600 1300
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J?
U 1 1 599E19FE
P 1250 1450
F 0 "J?" H 1250 1700 50  0000 C TNN
F 1 "MPower" V 1100 1450 50  0000 C TNN
F 2 "" H 1250 1225 50  0001 C CNN
F 3 "" H 1225 1450 50  0001 C CNN
	1    1250 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E1CE5
P 1600 1600
F 0 "#PWR?" H 1600 1350 50  0001 C CNN
F 1 "GND" H 1600 1450 50  0000 C CNN
F 2 "" H 1600 1600 50  0001 C CNN
F 3 "" H 1600 1600 50  0001 C CNN
	1    1600 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E1E65
P 1950 2850
F 0 "#PWR?" H 1950 2600 50  0001 C CNN
F 1 "GND" H 1950 2700 50  0000 C CNN
F 2 "" H 1950 2850 50  0001 C CNN
F 3 "" H 1950 2850 50  0001 C CNN
	1    1950 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E1F65
P 4075 1975
F 0 "#PWR?" H 4075 1725 50  0001 C CNN
F 1 "GND" H 4075 1825 50  0000 C CNN
F 2 "" H 4075 1975 50  0001 C CNN
F 3 "" H 4075 1975 50  0001 C CNN
	1    4075 1975
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E2178
P 5950 3400
F 0 "#PWR?" H 5950 3150 50  0001 C CNN
F 1 "GND" H 5950 3250 50  0000 C CNN
F 2 "" H 5950 3400 50  0001 C CNN
F 3 "" H 5950 3400 50  0001 C CNN
	1    5950 3400
	1    0    0    -1  
$EndComp
$Comp
L L293 U?
U 1 1 599E187A
P 6150 2450
F 0 "U?" H 5950 3475 50  0000 R CNN
F 1 "L293" H 5950 3400 50  0000 R CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 6400 1700 50  0001 L CNN
F 3 "" H 5850 3150 50  0001 C CNN
	1    6150 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E1AF8
P 7225 2400
F 0 "#PWR?" H 7225 2150 50  0001 C CNN
F 1 "GND" H 7225 2250 50  0000 C CNN
F 2 "" H 7225 2400 50  0001 C CNN
F 3 "" H 7225 2400 50  0001 C CNN
	1    7225 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E1B32
P 8000 3200
F 0 "#PWR?" H 8000 2950 50  0001 C CNN
F 1 "GND" H 8000 3050 50  0000 C CNN
F 2 "" H 8000 3200 50  0001 C CNN
F 3 "" H 8000 3200 50  0001 C CNN
	1    8000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2300 1900 2400
Wire Wire Line
	1900 2400 2250 2400
Wire Wire Line
	1450 1350 1600 1350
Wire Wire Line
	1600 1350 1600 1300
Wire Wire Line
	1450 1550 1600 1550
Wire Wire Line
	1600 1550 1600 1600
Wire Wire Line
	1950 2650 1950 2775
Wire Wire Line
	1950 2775 1950 2850
Wire Wire Line
	2250 2650 1950 2650
Wire Wire Line
	2250 2775 1950 2775
Connection ~ 1950 2775
Wire Wire Line
	4075 1900 4075 1975
Wire Wire Line
	4075 1900 3800 1900
Wire Wire Line
	5950 3250 5950 3325
Wire Wire Line
	5950 3325 5950 3400
Wire Wire Line
	6350 3325 6350 3250
Wire Wire Line
	5950 3325 6050 3325
Wire Wire Line
	6050 3325 6250 3325
Wire Wire Line
	6250 3325 6350 3325
Connection ~ 5950 3325
Wire Wire Line
	6050 3250 6050 3325
Connection ~ 6050 3325
Wire Wire Line
	6250 3250 6250 3325
Connection ~ 6250 3325
Wire Wire Line
	6650 1850 7100 1850
Wire Wire Line
	7100 1850 8750 1850
Wire Wire Line
	8750 1850 8750 2025
Wire Wire Line
	8750 2025 8875 2025
Wire Wire Line
	6650 2050 7350 2050
Wire Wire Line
	7350 2050 8675 2050
Wire Wire Line
	8675 2050 8675 2225
Wire Wire Line
	8675 2225 8875 2225
Wire Wire Line
	6650 2650 7875 2650
Wire Wire Line
	7875 2650 8675 2650
Wire Wire Line
	8675 2650 8675 2425
Wire Wire Line
	8675 2425 8875 2425
Wire Wire Line
	6650 2850 8125 2850
Wire Wire Line
	8125 2850 8750 2850
Wire Wire Line
	8750 2850 8750 2625
Wire Wire Line
	8750 2625 8875 2625
Connection ~ 7100 1850
Wire Wire Line
	7350 1775 7350 2050
Wire Wire Line
	7350 2050 7350 2125
Connection ~ 7350 2050
Wire Wire Line
	7100 2325 7100 2350
Wire Wire Line
	7100 2350 7225 2350
Wire Wire Line
	7225 2350 7350 2350
Wire Wire Line
	7350 2350 7350 2325
Wire Wire Line
	7225 2400 7225 2350
Connection ~ 7225 2350
Wire Wire Line
	7875 2600 7875 2650
Wire Wire Line
	7875 2650 7875 2900
Connection ~ 7875 2650
Wire Wire Line
	8125 2600 8125 2850
Wire Wire Line
	8125 2850 8125 2900
Connection ~ 8125 2850
Wire Wire Line
	7875 3100 7875 3150
Wire Wire Line
	7875 3150 8000 3150
Wire Wire Line
	8000 3150 8125 3150
Wire Wire Line
	8125 3150 8125 3100
Wire Wire Line
	8000 3200 8000 3150
Connection ~ 8000 3150
$Comp
L VCC #PWR?
U 1 1 599E21C4
P 7225 1450
F 0 "#PWR?" H 7225 1300 50  0001 C CNN
F 1 "VCC" H 7225 1600 50  0000 C CNN
F 2 "" H 7225 1450 50  0001 C CNN
F 3 "" H 7225 1450 50  0001 C CNN
	1    7225 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1575 7100 1500
Wire Wire Line
	7100 1500 7225 1500
Wire Wire Line
	7225 1500 7350 1500
Wire Wire Line
	7350 1500 7350 1575
Wire Wire Line
	7225 1450 7225 1500
Connection ~ 7225 1500
$Comp
L VCC #PWR?
U 1 1 599E22B3
P 8000 2275
F 0 "#PWR?" H 8000 2125 50  0001 C CNN
F 1 "VCC" H 8000 2425 50  0000 C CNN
F 2 "" H 8000 2275 50  0001 C CNN
F 3 "" H 8000 2275 50  0001 C CNN
	1    8000 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2275 8000 2325
Wire Wire Line
	7875 2400 7875 2325
Wire Wire Line
	7875 2325 8000 2325
Wire Wire Line
	8000 2325 8125 2325
Wire Wire Line
	8125 2325 8125 2400
Connection ~ 8000 2325
$Comp
L D_Schottky_Small D?
U 1 1 599E27ED
P 7100 2225
F 0 "D?" V 7150 2275 50  0000 L CNN
F 1 "1N5819" V 7000 2250 50  0000 L CNN
F 2 "" V 7100 2225 50  0001 C CNN
F 3 "" V 7100 2225 50  0001 C CNN
	1    7100 2225
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 599E27F3
P 7350 2225
F 0 "D?" V 7400 2075 50  0000 L CNN
F 1 "1N5819" V 7250 1900 50  0000 L CNN
F 2 "" V 7350 2225 50  0001 C CNN
F 3 "" V 7350 2225 50  0001 C CNN
	1    7350 2225
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 599E2875
P 7875 2500
F 0 "D?" V 7925 2550 50  0000 L CNN
F 1 "1N5819" V 7775 2525 50  0000 L CNN
F 2 "" V 7875 2500 50  0001 C CNN
F 3 "" V 7875 2500 50  0001 C CNN
	1    7875 2500
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 599E287B
P 8125 2500
F 0 "D?" V 8175 2350 50  0000 L CNN
F 1 "1N5819" V 8025 2175 50  0000 L CNN
F 2 "" V 8125 2500 50  0001 C CNN
F 3 "" V 8125 2500 50  0001 C CNN
	1    8125 2500
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 599E28DB
P 7875 3000
F 0 "D?" V 7925 3050 50  0000 L CNN
F 1 "1N5819" V 7775 3025 50  0000 L CNN
F 2 "" V 7875 3000 50  0001 C CNN
F 3 "" V 7875 3000 50  0001 C CNN
	1    7875 3000
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 599E28E1
P 8125 3000
F 0 "D?" V 8175 2850 50  0000 L CNN
F 1 "1N5819" V 8025 2675 50  0000 L CNN
F 2 "" V 8125 3000 50  0001 C CNN
F 3 "" V 8125 3000 50  0001 C CNN
	1    8125 3000
	0    -1   1    0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 599E2D18
P 1900 2300
F 0 "#PWR?" H 1900 2150 50  0001 C CNN
F 1 "+3V3" H 1900 2440 50  0000 C CNN
F 2 "" H 1900 2300 50  0001 C CNN
F 3 "" H 1900 2300 50  0001 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 599E2D5C
P 1650 2300
F 0 "#PWR?" H 1650 2150 50  0001 C CNN
F 1 "+5V" H 1650 2440 50  0000 C CNN
F 2 "" H 1650 2300 50  0001 C CNN
F 3 "" H 1650 2300 50  0001 C CNN
	1    1650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2525 1650 2525
Wire Wire Line
	1650 2525 1650 2300
$Comp
L VCC #PWR?
U 1 1 599E2F3E
P 6250 1325
F 0 "#PWR?" H 6250 1175 50  0001 C CNN
F 1 "VCC" H 6250 1475 50  0000 C CNN
F 2 "" H 6250 1325 50  0001 C CNN
F 3 "" H 6250 1325 50  0001 C CNN
	1    6250 1325
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1450 6250 1325
$Comp
L +5V #PWR?
U 1 1 599E302B
P 6050 1325
F 0 "#PWR?" H 6050 1175 50  0001 C CNN
F 1 "+5V" H 6050 1465 50  0000 C CNN
F 2 "" H 6050 1325 50  0001 C CNN
F 3 "" H 6050 1325 50  0001 C CNN
	1    6050 1325
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1450 6050 1325
Wire Wire Line
	7100 1775 7100 1850
Wire Wire Line
	7100 1850 7100 2125
$EndSCHEMATC
