EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L Connector:Conn_01x01_Female Jnoir?
U 1 1 5F49C09C
P 3450 3500
AR Path="/5F3E11CE/5F49C09C" Ref="Jnoir?"  Part="1" 
AR Path="/5F3E0F39/5F49C09C" Ref="Jrouge"  Part="1" 
F 0 "Jrouge" H 3478 3526 50  0000 L CNN
F 1 "Fiche banane ROUGE" H 3478 3435 50  0000 L CNN
F 2 "" H 3450 3500 50  0001 C CNN
F 3 "~" H 3450 3500 50  0001 C CNN
	1    3450 3500
	0    -1   -1   0   
$EndComp
Text HLabel 2150 4950 0    50   Input ~ 0
SelectHV_1KV
Text HLabel 2150 5050 0    50   Input ~ 0
SelectHV_2KV
Text HLabel 2150 5150 0    50   Input ~ 0
SelectHV_3KV
Text HLabel 3450 5600 3    50   Input ~ 0
SelecteurHV_P
$Comp
L Device:R_POT RV1
U 1 1 5F49FAC7
P 5650 6400
F 0 "RV1" V 5443 6400 50  0000 C CNN
F 1 "R_POT" V 5534 6400 50  0000 C CNN
F 2 "" H 5650 6400 50  0001 C CNN
F 3 "~" H 5650 6400 50  0001 C CNN
	1    5650 6400
	0    1    1    0   
$EndComp
$Comp
L Switch:HVselectorALS349 HVselector
U 1 1 5F4BCB37
P 3900 5000
F 0 "HVselector" H 3950 6075 50  0000 C CNN
F 1 "HVselectorALS349" H 3950 5984 50  0000 C CNN
F 2 "" H 3900 5000 50  0001 C CNN
F 3 "" H 3900 5000 50  0001 C CNN
	1    3900 5000
	1    0    0    -1  
$EndComp
$Comp
L Switch:HVselectorALS349 HVselector
U 2 1 5F4BDADA
P 5050 5000
F 0 "HVselector" H 5100 6075 50  0000 C CNN
F 1 "HVselectorALS349" H 5100 5984 50  0000 C CNN
F 2 "" H 5050 5000 50  0001 C CNN
F 3 "" H 5050 5000 50  0001 C CNN
	2    5050 5000
	1    0    0    -1  
$EndComp
NoConn ~ 4150 4650
NoConn ~ 4150 4750
NoConn ~ 4150 4850
NoConn ~ 4150 5150
NoConn ~ 4150 5250
NoConn ~ 4150 5350
NoConn ~ 5300 5350
NoConn ~ 5300 5250
NoConn ~ 5300 5150
NoConn ~ 5300 4850
NoConn ~ 5300 4750
NoConn ~ 5300 4650
Wire Notes Line
	3200 3900 3200 5950
Text Notes 2800 4150 0    50   ~ 0
facade\nde\nl'appareil
Text Notes 3550 4350 0    50   ~ 0
1kV\n2kV\n3kV
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5F4C2EFB
P 4600 2200
F 0 "RV?" H 4530 2154 50  0000 R CNN
F 1 "R_POT_TRIM" H 4530 2245 50  0000 R CNN
F 2 "" H 4600 2200 50  0001 C CNN
F 3 "~" H 4600 2200 50  0001 C CNN
	1    4600 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5F4C39CC
P 4600 2800
F 0 "RV?" H 4530 2754 50  0000 R CNN
F 1 "R_POT_TRIM" H 4530 2845 50  0000 R CNN
F 2 "" H 4600 2800 50  0001 C CNN
F 3 "~" H 4600 2800 50  0001 C CNN
	1    4600 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5F4C4D94
P 4600 3400
F 0 "RV?" H 4530 3354 50  0000 R CNN
F 1 "R_POT_TRIM" H 4530 3445 50  0000 R CNN
F 2 "" H 4600 3400 50  0001 C CNN
F 3 "~" H 4600 3400 50  0001 C CNN
	1    4600 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 4150 4250 4150
Wire Wire Line
	4250 4150 4250 2200
Wire Wire Line
	4250 2200 4450 2200
Wire Wire Line
	4150 4250 4300 4250
Wire Wire Line
	4300 4250 4300 2800
Wire Wire Line
	4300 2800 4450 2800
Wire Wire Line
	4150 4350 4350 4350
Wire Wire Line
	4350 4350 4350 3400
Wire Wire Line
	4350 3400 4450 3400
Wire Wire Line
	4600 2350 4600 2450
Wire Wire Line
	4600 2450 4850 2450
Wire Wire Line
	4600 3550 4600 3650
Wire Wire Line
	4600 3650 4850 3650
Wire Wire Line
	4850 3650 4850 3050
Wire Wire Line
	4600 2950 4600 3050
Wire Wire Line
	4600 3050 4850 3050
Connection ~ 4850 3050
Wire Wire Line
	4850 3050 4850 2450
Wire Wire Line
	4600 3650 4600 3750
Connection ~ 4600 3650
Text HLabel 4600 3750 3    50   Input ~ 0
HVslectorTrimers
Text Notes 3550 4850 0    50   ~ 0
1kV\n2kV\n3kV
Text Notes 3550 5350 0    50   ~ 0
1kV\n2kV\n3kV
Text Notes 3550 5850 0    50   ~ 0
1kV\n2kV\n3kV
$Comp
L Mechanical:MountingHole_Pad RondelleFilBlanc
U 1 1 5F4E07A0
P 2900 3600
F 0 "RondelleFilBlanc" H 2550 3800 50  0000 L CNN
F 1 "MountingHole_Pad" H 2100 3600 50  0001 L CNN
F 2 "" H 2900 3600 50  0001 C CNN
F 3 "~" H 2900 3600 50  0001 C CNN
	1    2900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3800 2900 3800
Wire Wire Line
	2900 3800 2900 3700
Wire Wire Line
	3450 3800 3450 3700
Connection ~ 3450 3800
Wire Wire Line
	3450 4500 3750 4500
Wire Wire Line
	3450 3800 3450 4500
Wire Wire Line
	3450 5600 3450 5500
Wire Wire Line
	3450 5500 3750 5500
Wire Wire Line
	4150 5650 4500 5650
Wire Wire Line
	4500 5650 4500 5950
Wire Wire Line
	4150 5750 4450 5750
Wire Wire Line
	4450 5750 4450 5950
Wire Wire Line
	4150 5850 4400 5850
Wire Wire Line
	4400 5850 4400 5950
Wire Wire Line
	5500 6400 4800 6400
Wire Wire Line
	4800 5500 4900 5500
$Comp
L Device:R R?
U 1 1 5F4E7689
P 6150 5300
F 0 "R?" H 6220 5346 50  0000 L CNN
F 1 "R" H 6220 5255 50  0000 L CNN
F 2 "" V 6080 5300 50  0001 C CNN
F 3 "~" H 6150 5300 50  0001 C CNN
	1    6150 5300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F4E8423
P 6150 5600
F 0 "R?" H 6220 5646 50  0000 L CNN
F 1 "R" H 6220 5555 50  0000 L CNN
F 2 "" V 6080 5600 50  0001 C CNN
F 3 "~" H 6150 5600 50  0001 C CNN
	1    6150 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 5450 5850 5450
Connection ~ 6150 5450
Wire Wire Line
	6150 5750 5850 5750
Wire Wire Line
	6150 5150 6150 5100
Wire Wire Line
	6150 5100 5850 5100
Wire Notes Line
	6250 6150 5950 6150
Wire Notes Line
	5950 6150 5950 5050
Wire Notes Line
	5950 5050 6250 5050
Wire Notes Line
	6250 5050 6250 6150
$Comp
L Device:R R?
U 1 1 5F4EC466
P 6150 5900
F 0 "R?" H 6220 5946 50  0000 L CNN
F 1 "R" H 6220 5855 50  0000 L CNN
F 2 "" V 6080 5900 50  0001 C CNN
F 3 "~" H 6150 5900 50  0001 C CNN
	1    6150 5900
	-1   0    0    1   
$EndComp
Connection ~ 6150 5750
Wire Wire Line
	6150 6050 6150 6100
Wire Wire Line
	4800 5500 4800 6100
Wire Wire Line
	4800 6100 6150 6100
Connection ~ 4800 6100
Wire Wire Line
	4800 6100 4800 6400
$EndSCHEMATC
