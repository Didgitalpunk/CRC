EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6200 3700 1    50   Input ~ 0
SPolaMasse
$Comp
L Switch:PolaritySwitchALS349 SW_polarity_
U 1 1 5F462CDB
P 2900 3750
F 0 "SW_polarity_" H 2900 4600 50  0000 C CNN
F 1 "PolaritySwitchALS349" H 2900 4500 50  0000 C CNN
F 2 "" H 2900 4000 50  0001 C CNN
F 3 "" H 2900 4000 50  0001 C CNN
	1    2900 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:PolaritySwitchALS349 SW_polarity_
U 2 1 5F463B78
P 3800 3750
F 0 "SW_polarity_" H 3800 4600 50  0000 C CNN
F 1 "PolaritySwitchALS349" H 3800 4500 50  0000 C CNN
F 2 "" H 3800 4000 50  0001 C CNN
F 3 "" H 3800 4000 50  0001 C CNN
	2    3800 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:PolaritySwitchALS349 SW_polarity_
U 3 1 5F464752
P 4700 3750
F 0 "SW_polarity_" H 4700 4600 50  0000 C CNN
F 1 "PolaritySwitchALS349" H 4700 4500 50  0000 C CNN
F 2 "" H 4700 4000 50  0001 C CNN
F 3 "" H 4700 4000 50  0001 C CNN
	3    4700 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:PolaritySwitchALS349 SW_polarity_
U 4 1 5F46527A
P 5600 3750
F 0 "SW_polarity_" H 5600 4600 50  0000 C CNN
F 1 "PolaritySwitchALS349" H 5600 4500 50  0000 C CNN
F 2 "" H 5600 4000 50  0001 C CNN
F 3 "" H 5600 4000 50  0001 C CNN
	4    5600 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:PolaritySwitchALS349 SW_polarity_
U 5 1 5F465E59
P 6500 3750
F 0 "SW_polarity_" H 6500 4600 50  0000 C CNN
F 1 "PolaritySwitchALS349" H 6500 4500 50  0000 C CNN
F 2 "" H 6500 4000 50  0001 C CNN
F 3 "" H 6500 4000 50  0001 C CNN
	5    6500 3750
	1    0    0    -1  
$EndComp
NoConn ~ 3100 3400
NoConn ~ 3100 3600
NoConn ~ 4000 3400
NoConn ~ 4000 3600
NoConn ~ 4900 3400
NoConn ~ 4900 3600
NoConn ~ 5800 3400
NoConn ~ 5800 3600
NoConn ~ 6700 3400
NoConn ~ 6700 3600
Wire Notes Line
	2200 3350 2200 4700
Text Notes 1750 3550 0    50   ~ 0
facade\nde\nl'appareil
Text Notes 2650 3600 0    50   ~ 0
neg
Text Notes 2650 3400 0    50   ~ 0
pos
Text Notes 2650 4100 0    50   ~ 0
neg
Text Notes 2650 3900 0    50   ~ 0
pos
Wire Wire Line
	6200 3700 6200 3750
Wire Wire Line
	6200 3750 6300 3750
Text GLabel 3250 4500 3    50   Input ~ 0
GND
Wire Wire Line
	3100 4100 3250 4100
Wire Wire Line
	3250 4100 3250 4300
Wire Wire Line
	3250 4300 4150 4300
Wire Wire Line
	5050 4300 5050 4100
Wire Wire Line
	5050 4100 4900 4100
Connection ~ 3250 4300
Wire Wire Line
	3250 4300 3250 4500
Wire Wire Line
	4000 3900 4150 3900
Wire Wire Line
	4150 3900 4150 4300
Connection ~ 4150 4300
Wire Wire Line
	4150 4300 5050 4300
Wire Wire Line
	5050 4300 6000 4300
Wire Wire Line
	6000 4300 6000 3900
Wire Wire Line
	6000 3900 5800 3900
Connection ~ 5050 4300
Wire Wire Line
	4500 3750 4400 3750
Wire Wire Line
	4400 3750 4400 3150
Wire Wire Line
	4400 3150 6850 3150
Wire Wire Line
	6850 3150 6850 3900
Wire Wire Line
	6850 3900 6700 3900
Wire Wire Line
	3100 3900 3450 3900
Wire Wire Line
	3450 3900 3450 4200
Wire Wire Line
	3450 4200 4100 4200
Wire Wire Line
	4100 4200 4100 4100
Wire Wire Line
	4100 4100 4000 4100
Text HLabel 2400 4350 3    50   Input ~ 0
SPolaRED
Wire Wire Line
	2400 4350 2400 3750
Wire Wire Line
	2400 3750 2700 3750
Text HLabel 3150 2300 0    50   Input ~ 0
SPolaHV
Wire Wire Line
	3500 2300 3500 3750
Wire Wire Line
	3500 3750 3600 3750
Wire Notes Line
	3250 1000 4250 1000
Wire Notes Line
	4250 1000 4250 1500
Wire Notes Line
	4250 1500 3250 1500
Wire Notes Line
	3250 1500 3250 1000
$Comp
L Device:C C?
U 1 1 5F48F41F
P 3500 1250
F 0 "C?" H 3385 1204 50  0000 R CNN
F 1 "Crond" H 3385 1295 50  0000 R CNN
F 2 "" H 3538 1100 50  0001 C CNN
F 3 "~" H 3500 1250 50  0001 C CNN
	1    3500 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5F490B21
P 4000 1250
F 0 "C?" H 3885 1204 50  0000 R CNN
F 1 "Ccireux" H 3885 1295 50  0000 R CNN
F 2 "" H 4038 1100 50  0001 C CNN
F 3 "~" H 4000 1250 50  0001 C CNN
	1    4000 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 1100 3500 1050
Wire Wire Line
	3500 1050 3750 1050
Wire Wire Line
	3750 1050 3750 1450
Wire Wire Line
	3750 1450 4000 1450
Wire Wire Line
	4000 1450 4000 1400
Wire Wire Line
	3500 1400 3500 2300
Wire Wire Line
	3150 2300 3500 2300
Connection ~ 3500 2300
Wire Wire Line
	4000 950  4000 1100
Wire Wire Line
	4000 1450 4000 1550
Connection ~ 4000 1450
Wire Wire Line
	3500 2300 3750 2300
Wire Wire Line
	5400 3750 5350 3750
Wire Wire Line
	5350 3750 5350 3300
Wire Wire Line
	5350 3300 6100 3300
Wire Wire Line
	6100 3300 6100 4200
Wire Wire Line
	6800 4200 6800 4100
Wire Wire Line
	6800 4100 6700 4100
Wire Wire Line
	6100 4200 6800 4200
Wire Wire Line
	6800 4100 7400 4100
Connection ~ 6800 4100
$Comp
L Connector:Conn_01x01_Female Jnoir
U 1 1 5F49B493
P 7600 4100
F 0 "Jnoir" H 7628 4126 50  0000 L CNN
F 1 "Fiche banane NOIR" H 7628 4035 50  0000 L CNN
F 2 "" H 7600 4100 50  0001 C CNN
F 3 "~" H 7600 4100 50  0001 C CNN
	1    7600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3150 7450 3150
Text HLabel 7450 3150 2    50   Input ~ 0
HVslectorTrimers
Connection ~ 6850 3150
$EndSCHEMATC