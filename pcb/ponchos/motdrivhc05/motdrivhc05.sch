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
P 3075 3975
F 0 "SH?" H 3100 2750 60  0000 C CNN
F 1 "ARDUINO_as_UNO" H 3100 5325 60  0000 C CNN
F 2 "" H 2875 3750 60  0000 C CNN
F 3 "" H 2875 3750 60  0000 C CNN
	1    3075 3975
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x04 J?
U 1 1 599E0DDC
P 9900 2675
F 0 "J?" H 9900 3125 50  0000 C TNN
F 1 "Screw_Terminal_1x04" V 9750 2675 50  0000 C TNN
F 2 "" H 9900 2250 50  0001 C CNN
F 3 "" H 9875 2875 50  0001 C CNN
	1    9900 2675
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 599E186B
P 1700 1175
F 0 "#PWR?" H 1700 1025 50  0001 C CNN
F 1 "VCC" H 1700 1325 50  0000 C CNN
F 2 "" H 1700 1175 50  0001 C CNN
F 3 "" H 1700 1175 50  0001 C CNN
	1    1700 1175
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J?
U 1 1 599E19FE
P 1350 1325
F 0 "J?" H 1350 1575 50  0000 C TNN
F 1 "MPower" V 1200 1325 50  0000 C TNN
F 2 "" H 1350 1100 50  0001 C CNN
F 3 "" H 1325 1325 50  0001 C CNN
	1    1350 1325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E1CE5
P 1700 1475
F 0 "#PWR?" H 1700 1225 50  0001 C CNN
F 1 "GND" H 1700 1325 50  0000 C CNN
F 2 "" H 1700 1475 50  0001 C CNN
F 3 "" H 1700 1475 50  0001 C CNN
	1    1700 1475
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E1E65
P 2025 4125
F 0 "#PWR?" H 2025 3875 50  0001 C CNN
F 1 "GND" H 2025 3975 50  0000 C CNN
F 2 "" H 2025 4125 50  0001 C CNN
F 3 "" H 2025 4125 50  0001 C CNN
	1    2025 4125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E1F65
P 4775 3250
F 0 "#PWR?" H 4775 3000 50  0001 C CNN
F 1 "GND" H 4775 3100 50  0000 C CNN
F 2 "" H 4775 3250 50  0001 C CNN
F 3 "" H 4775 3250 50  0001 C CNN
	1    4775 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E2178
P 6775 3750
F 0 "#PWR?" H 6775 3500 50  0001 C CNN
F 1 "GND" H 6775 3600 50  0000 C CNN
F 2 "" H 6775 3750 50  0001 C CNN
F 3 "" H 6775 3750 50  0001 C CNN
	1    6775 3750
	1    0    0    -1  
$EndComp
$Comp
L L293 U?
U 1 1 599E187A
P 6975 2800
F 0 "U?" H 6775 3825 50  0000 R CNN
F 1 "L293" H 6775 3750 50  0000 R CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 7225 2050 50  0001 L CNN
F 3 "" H 6675 3500 50  0001 C CNN
	1    6975 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 599E1AF8
P 8800 3550
F 0 "#PWR?" H 8800 3300 50  0001 C CNN
F 1 "GND" H 8800 3400 50  0000 C CNN
F 2 "" H 8800 3550 50  0001 C CNN
F 3 "" H 8800 3550 50  0001 C CNN
	1    8800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1975 3575 1975 3675
Wire Wire Line
	1975 3675 2325 3675
Wire Wire Line
	1550 1225 1700 1225
Wire Wire Line
	1700 1225 1700 1175
Wire Wire Line
	1550 1425 1700 1425
Wire Wire Line
	1700 1425 1700 1475
Wire Wire Line
	2025 3925 2025 4050
Wire Wire Line
	2025 4050 2025 4125
Wire Wire Line
	2325 3925 2025 3925
Wire Wire Line
	2325 4050 2025 4050
Connection ~ 2025 4050
Wire Wire Line
	4775 3175 4775 3250
Wire Wire Line
	4775 3175 3875 3175
Wire Wire Line
	6775 3600 6775 3675
Wire Wire Line
	6775 3675 6775 3750
Wire Wire Line
	7175 3675 7175 3600
Wire Wire Line
	6775 3675 6875 3675
Wire Wire Line
	6875 3675 7075 3675
Wire Wire Line
	7075 3675 7175 3675
Connection ~ 6775 3675
Wire Wire Line
	6875 3600 6875 3675
Connection ~ 6875 3675
Wire Wire Line
	7075 3600 7075 3675
Connection ~ 7075 3675
Wire Wire Line
	7725 2375 8225 2375
Wire Wire Line
	8225 2375 9700 2375
Wire Wire Line
	7625 2575 8625 2575
Wire Wire Line
	8625 2575 9700 2575
Wire Wire Line
	7625 2775 8975 2775
Wire Wire Line
	8975 2775 9700 2775
Wire Wire Line
	7725 2975 9375 2975
Wire Wire Line
	9375 2975 9700 2975
Wire Wire Line
	8225 3300 8225 3325
Wire Wire Line
	8225 3325 8625 3325
Wire Wire Line
	8625 3325 8800 3325
Wire Wire Line
	8800 3325 8975 3325
Wire Wire Line
	8975 3325 9375 3325
Wire Wire Line
	8625 3325 8625 3300
Wire Wire Line
	8800 3325 8800 3550
$Comp
L VCC #PWR?
U 1 1 599E21C4
P 8800 1825
F 0 "#PWR?" H 8800 1675 50  0001 C CNN
F 1 "VCC" H 8800 1975 50  0000 C CNN
F 2 "" H 8800 1825 50  0001 C CNN
F 3 "" H 8800 1825 50  0001 C CNN
	1    8800 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	8225 2075 8225 2000
$Comp
L D_Schottky_Small D?
U 1 1 599E27ED
P 8225 3200
F 0 "D?" V 8275 3250 50  0000 L CNN
F 1 "1N5819" V 8125 3225 50  0000 L CNN
F 2 "" V 8225 3200 50  0001 C CNN
F 3 "" V 8225 3200 50  0001 C CNN
	1    8225 3200
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 599E27F3
P 8625 3200
F 0 "D?" V 8675 3275 50  0000 L CNN
F 1 "1N5819" V 8525 3250 50  0000 L CNN
F 2 "" V 8625 3200 50  0001 C CNN
F 3 "" V 8625 3200 50  0001 C CNN
	1    8625 3200
	0    -1   1    0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 599E2D18
P 1975 3575
F 0 "#PWR?" H 1975 3425 50  0001 C CNN
F 1 "+3V3" H 1975 3715 50  0000 C CNN
F 2 "" H 1975 3575 50  0001 C CNN
F 3 "" H 1975 3575 50  0001 C CNN
	1    1975 3575
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 599E2D5C
P 1725 3575
F 0 "#PWR?" H 1725 3425 50  0001 C CNN
F 1 "+5V" H 1725 3715 50  0000 C CNN
F 2 "" H 1725 3575 50  0001 C CNN
F 3 "" H 1725 3575 50  0001 C CNN
	1    1725 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	2325 3800 1725 3800
Wire Wire Line
	1725 3800 1725 3575
$Comp
L VCC #PWR?
U 1 1 599E2F3E
P 7075 1050
F 0 "#PWR?" H 7075 900 50  0001 C CNN
F 1 "VCC" H 7075 1200 50  0000 C CNN
F 2 "" H 7075 1050 50  0001 C CNN
F 3 "" H 7075 1050 50  0001 C CNN
	1    7075 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 1050 7075 1100
Wire Wire Line
	7075 1100 7075 1800
$Comp
L +5V #PWR?
U 1 1 599E302B
P 6875 1050
F 0 "#PWR?" H 6875 900 50  0001 C CNN
F 1 "+5V" H 6875 1190 50  0000 C CNN
F 2 "" H 6875 1050 50  0001 C CNN
F 3 "" H 6875 1050 50  0001 C CNN
	1    6875 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6875 1050 6875 1100
Wire Wire Line
	6875 1100 6875 1800
Text Label 6250 2200 2    60   ~ 0
M1A
Wire Wire Line
	6475 2200 6250 2200
Text Label 6250 2400 2    60   ~ 0
M2A
Wire Wire Line
	6475 2400 6250 2400
Text Label 6250 2600 2    60   ~ 0
ME12
Wire Wire Line
	6475 2600 6250 2600
Text Label 6250 2800 2    60   ~ 0
ME34
Wire Wire Line
	6475 2800 6250 2800
Text Label 6250 3000 2    60   ~ 0
M3A
Wire Wire Line
	6475 3000 6250 3000
Text Label 6250 3200 2    60   ~ 0
M4A
Wire Wire Line
	6475 3200 6250 3200
Text Label 4100 3925 0    60   ~ 0
M1A
Wire Wire Line
	3875 3925 4100 3925
Text Label 4100 3550 0    60   ~ 0
M2A
Wire Wire Line
	3875 3550 4100 3550
Text Label 4100 3800 0    60   ~ 0
ME12
Wire Wire Line
	3875 3800 4100 3800
Text Label 4100 3675 0    60   ~ 0
ME34
Wire Wire Line
	3875 3675 4100 3675
Text Label 4100 3425 0    60   ~ 0
M3A
Wire Wire Line
	3875 3425 4100 3425
Text Label 4100 3300 0    60   ~ 0
M4A
Wire Wire Line
	3875 3300 4100 3300
$Comp
L CP1_Small C?
U 1 1 59A1AF9D
P 6125 1350
F 0 "C?" H 6135 1420 50  0000 L CNN
F 1 "100uf-6v" H 6135 1270 50  0000 L CNN
F 2 "" H 6125 1350 50  0001 C CNN
F 3 "" H 6125 1350 50  0001 C CNN
	1    6125 1350
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C?
U 1 1 59A1B2B2
P 6600 1350
F 0 "C?" H 6610 1420 50  0000 L CNN
F 1 "100nf" H 6610 1270 50  0000 L CNN
F 2 "" H 6600 1350 50  0001 C CNN
F 3 "" H 6600 1350 50  0001 C CNN
	1    6600 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59A1B50A
P 6400 1600
F 0 "#PWR?" H 6400 1350 50  0001 C CNN
F 1 "GND" H 6400 1450 50  0000 C CNN
F 2 "" H 6400 1600 50  0001 C CNN
F 3 "" H 6400 1600 50  0001 C CNN
	1    6400 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1525 6400 1600
Wire Wire Line
	6125 1100 6600 1100
Wire Wire Line
	6600 1100 6875 1100
Wire Wire Line
	6125 1100 6125 1250
Connection ~ 6875 1100
Wire Wire Line
	6600 1225 6600 1100
Connection ~ 6600 1100
Wire Wire Line
	6125 1450 6125 1525
Wire Wire Line
	6125 1525 6400 1525
Wire Wire Line
	6400 1525 6600 1525
Wire Wire Line
	6600 1525 6600 1450
Connection ~ 6400 1525
$Comp
L CP1_Small C?
U 1 1 59A1B86C
P 7400 1325
F 0 "C?" H 7410 1395 50  0000 L CNN
F 1 "47uf-50v" H 7410 1245 50  0000 L CNN
F 2 "" H 7400 1325 50  0001 C CNN
F 3 "" H 7400 1325 50  0001 C CNN
	1    7400 1325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59A1B8C4
P 7400 1500
F 0 "#PWR?" H 7400 1250 50  0001 C CNN
F 1 "GND" H 7400 1350 50  0000 C CNN
F 2 "" H 7400 1500 50  0001 C CNN
F 3 "" H 7400 1500 50  0001 C CNN
	1    7400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1425 7400 1500
Wire Wire Line
	7075 1100 7400 1100
Wire Wire Line
	7400 1100 7400 1225
Connection ~ 7075 1100
$Comp
L Q_NPN_BCE Q?
U 1 1 59A1BF0C
P 2325 6650
F 0 "Q?" H 2525 6700 50  0000 L CNN
F 1 "TIP31" H 2525 6600 50  0000 L CNN
F 2 "" H 2525 6750 50  0001 C CNN
F 3 "" H 2325 6650 50  0001 C CNN
	1    2325 6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59A1C2CB
P 2425 7000
F 0 "#PWR?" H 2425 6750 50  0001 C CNN
F 1 "GND" H 2425 6850 50  0000 C CNN
F 2 "" H 2425 7000 50  0001 C CNN
F 3 "" H 2425 7000 50  0001 C CNN
	1    2425 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 6850 2425 6925
Wire Wire Line
	2425 6925 2425 7000
$Comp
L Q_NPN_BCE Q?
U 1 1 59A1C711
P 4325 6650
F 0 "Q?" H 4525 6700 50  0000 L CNN
F 1 "TIP31" H 4525 6600 50  0000 L CNN
F 2 "" H 4525 6750 50  0001 C CNN
F 3 "" H 4325 6650 50  0001 C CNN
	1    4325 6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59A1C717
P 4425 7000
F 0 "#PWR?" H 4425 6750 50  0001 C CNN
F 1 "GND" H 4425 6850 50  0000 C CNN
F 2 "" H 4425 7000 50  0001 C CNN
F 3 "" H 4425 7000 50  0001 C CNN
	1    4425 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 6850 4425 6925
Wire Wire Line
	4425 6925 4425 7000
Text Label 3725 6650 2    60   ~ 0
T2
Wire Wire Line
	3825 6650 3725 6650
$Comp
L CONN_01X02 J?
U 1 1 59A1C921
P 5400 6300
F 0 "J?" H 5400 6450 50  0000 C CNN
F 1 "CONN_01X02" V 5500 6300 50  0000 C CNN
F 2 "" H 5400 6300 50  0001 C CNN
F 3 "" H 5400 6300 50  0001 C CNN
	1    5400 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 6250 2925 6250
Wire Wire Line
	2925 6250 5200 6250
Wire Wire Line
	2425 6250 2425 6450
Wire Wire Line
	4425 6350 4825 6350
Wire Wire Line
	4825 6350 5200 6350
Wire Wire Line
	4425 6350 4425 6450
$Comp
L R_Small R?
U 1 1 59A1CD6A
P 3925 6650
F 0 "R?" V 3825 6625 50  0000 L CNN
F 1 "1K" V 4025 6600 50  0000 L CNN
F 2 "" H 3925 6650 50  0001 C CNN
F 3 "" H 3925 6650 50  0001 C CNN
	1    3925 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	4125 6650 4025 6650
Text Label 1725 6650 2    60   ~ 0
T1
Wire Wire Line
	1825 6650 1725 6650
$Comp
L R_Small R?
U 1 1 59A1D20C
P 1925 6650
F 0 "R?" V 1825 6625 50  0000 L CNN
F 1 "1K" V 2025 6600 50  0000 L CNN
F 2 "" H 1925 6650 50  0001 C CNN
F 3 "" H 1925 6650 50  0001 C CNN
	1    1925 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	2125 6650 2025 6650
$Comp
L D_Schottky_Small D?
U 1 1 59A1D6C4
P 2925 6650
F 0 "D?" V 2975 6700 50  0000 L CNN
F 1 "1N5819" V 3025 6300 50  0000 L CNN
F 2 "" V 2925 6650 50  0001 C CNN
F 3 "" V 2925 6650 50  0001 C CNN
	1    2925 6650
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 59A1D6CA
P 4825 6675
F 0 "D?" V 4875 6525 50  0000 L CNN
F 1 "1N5819" V 4725 6350 50  0000 L CNN
F 2 "" V 4825 6675 50  0001 C CNN
F 3 "" V 4825 6675 50  0001 C CNN
	1    4825 6675
	0    -1   1    0   
$EndComp
Wire Wire Line
	4825 6350 4825 6575
Connection ~ 4825 6350
Wire Wire Line
	4825 6775 4825 6925
Wire Wire Line
	4825 6925 4425 6925
Connection ~ 4425 6925
Wire Wire Line
	2925 6550 2925 6250
Connection ~ 2925 6250
Wire Wire Line
	2925 6750 2925 6925
Wire Wire Line
	2925 6925 2425 6925
Connection ~ 2425 6925
Text Label 3975 2800 0    60   ~ 0
T1
Wire Wire Line
	3875 2800 3975 2800
Text Label 3975 2925 0    60   ~ 0
T2
Wire Wire Line
	3875 2925 3975 2925
Wire Wire Line
	7625 2575 7625 2400
Wire Wire Line
	7625 2400 7475 2400
Wire Wire Line
	7725 2375 7725 2200
Wire Wire Line
	7725 2200 7475 2200
Wire Wire Line
	7625 2775 7625 3000
Wire Wire Line
	7625 3000 7475 3000
Wire Wire Line
	7475 3200 7725 3200
Wire Wire Line
	7725 3200 7725 2975
$Comp
L D_Schottky_Small D?
U 1 1 59A3B6E7
P 8975 3200
F 0 "D?" V 9025 3250 50  0000 L CNN
F 1 "1N5819" V 8875 3225 50  0000 L CNN
F 2 "" V 8975 3200 50  0001 C CNN
F 3 "" V 8975 3200 50  0001 C CNN
	1    8975 3200
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 59A3B6ED
P 9375 3200
F 0 "D?" V 9425 3275 50  0000 L CNN
F 1 "1N5819" V 9275 3250 50  0000 L CNN
F 2 "" V 9375 3200 50  0001 C CNN
F 3 "" V 9375 3200 50  0001 C CNN
	1    9375 3200
	0    -1   1    0   
$EndComp
Wire Wire Line
	9375 3325 9375 3300
Connection ~ 8625 3325
Wire Wire Line
	8975 3300 8975 3325
Connection ~ 8975 3325
Connection ~ 8800 3325
$Comp
L D_Schottky_Small D?
U 1 1 59A3BC0B
P 8225 2175
F 0 "D?" V 8275 2225 50  0000 L CNN
F 1 "1N5819" V 8125 2200 50  0000 L CNN
F 2 "" V 8225 2175 50  0001 C CNN
F 3 "" V 8225 2175 50  0001 C CNN
	1    8225 2175
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 59A3BC11
P 8625 2175
F 0 "D?" V 8675 2250 50  0000 L CNN
F 1 "1N5819" V 8525 2225 50  0000 L CNN
F 2 "" V 8625 2175 50  0001 C CNN
F 3 "" V 8625 2175 50  0001 C CNN
	1    8625 2175
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 59A3BC17
P 8975 2175
F 0 "D?" V 9025 2225 50  0000 L CNN
F 1 "1N5819" V 8875 2200 50  0000 L CNN
F 2 "" V 8975 2175 50  0001 C CNN
F 3 "" V 8975 2175 50  0001 C CNN
	1    8975 2175
	0    -1   1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 59A3BC1D
P 9375 2175
F 0 "D?" V 9425 2250 50  0000 L CNN
F 1 "1N5819" V 9275 2225 50  0000 L CNN
F 2 "" V 9375 2175 50  0001 C CNN
F 3 "" V 9375 2175 50  0001 C CNN
	1    9375 2175
	0    -1   1    0   
$EndComp
Wire Wire Line
	8225 2000 8625 2000
Wire Wire Line
	8625 2000 8800 2000
Wire Wire Line
	8800 2000 8975 2000
Wire Wire Line
	8975 2000 9375 2000
Wire Wire Line
	9375 2000 9375 2075
Wire Wire Line
	8625 2075 8625 2000
Connection ~ 8625 2000
Wire Wire Line
	8975 2075 8975 2000
Connection ~ 8975 2000
Wire Wire Line
	8225 2275 8225 2375
Wire Wire Line
	8225 2375 8225 3100
Wire Wire Line
	8625 3100 8625 2575
Wire Wire Line
	8625 2575 8625 2275
Wire Wire Line
	8975 3100 8975 2775
Wire Wire Line
	8975 2775 8975 2275
Wire Wire Line
	9375 2275 9375 2975
Wire Wire Line
	9375 2975 9375 3100
Wire Wire Line
	8800 1825 8800 2000
Connection ~ 8800 2000
Connection ~ 8225 2375
Connection ~ 8625 2575
Connection ~ 8975 2775
Connection ~ 9375 2975
$EndSCHEMATC
