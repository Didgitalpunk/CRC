EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Transformer:T1_ALS349 T1
U 1 1 5F381088
P 6150 5150
F 0 "T1" H 6161 6398 50  0000 C CNN
F 1 "T1_ALS349" H 6161 6307 50  0000 C CNN
F 2 "" H 6150 5250 50  0001 C CNN
F 3 "" H 6150 5250 50  0001 C CNN
	1    6150 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_WallPlug_Earth P1
U 1 1 5F385FFF
P 1550 5650
F 0 "P1" H 1550 5950 50  0000 C CNN
F 1 "Conn_WallPlug_Earth" H 1150 5400 50  0000 C CNN
F 2 "" H 1950 5650 50  0001 C CNN
F 3 "~" H 1950 5650 50  0001 C CNN
	1    1550 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5F38D093
P 2550 5550
F 0 "F1" V 2353 5550 50  0000 C CNN
F 1 "2A" V 2444 5550 50  0000 C CNN
F 2 "" V 2480 5550 50  0001 C CNN
F 3 "~" H 2550 5550 50  0001 C CNN
	1    2550 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 5550 1850 5550
Wire Wire Line
	2700 5550 2850 5550
Wire Wire Line
	3500 5550 3500 5450
$Comp
L Switch:SW_SPST SW_CH
U 1 1 5F38E56E
P 3050 5550
F 0 "SW_CH" H 3050 5785 50  0000 C CNN
F 1 "SW_SPST" H 3050 5694 50  0000 C CNN
F 2 "" H 3050 5550 50  0001 C CNN
F 3 "~" H 3050 5550 50  0001 C CNN
	1    3050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5550 3500 5550
Text Notes 5200 5850 0    50   ~ 0
220V\n
Text Notes 5200 5750 0    50   ~ 0
130V\n
Text Notes 5200 5650 0    50   ~ 0
110V\n
Wire Wire Line
	5750 4550 5650 4550
Wire Wire Line
	5650 4550 5650 4950
Wire Wire Line
	5650 4950 5750 4950
$Comp
L Device:Lamp Vert
U 1 1 5F393B99
P 5200 4650
F 0 "Vert" H 5400 4700 50  0000 C CNN
F 1 "Charge" H 5450 4600 50  0000 C CNN
F 2 "" V 5200 4750 50  0001 C CNN
F 3 "~" V 5200 4750 50  0001 C CNN
	1    5200 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp Rouge
U 1 1 5F394644
P 4800 4350
F 0 "Rouge" V 4600 4350 50  0000 C CNN
F 1 "HT" V 4650 4350 50  0000 C CNN
F 2 "" V 4800 4450 50  0001 C CNN
F 3 "~" V 4800 4450 50  0001 C CNN
	1    4800 4350
	0    -1   -1   0   
$EndComp
Text GLabel 1950 6100 3    50   Input ~ 0
GND
Text GLabel 3900 4950 0    50   Input ~ 0
GND
Wire Wire Line
	3900 4950 4000 4950
Wire Wire Line
	1950 6100 1950 5950
Wire Wire Line
	5200 4350 5000 4350
Wire Wire Line
	5200 4350 5750 4350
Connection ~ 5200 4350
Wire Wire Line
	5650 4950 5200 4950
Connection ~ 5650 4950
Wire Wire Line
	5200 4950 5200 4850
$Comp
L Switch:SW_DPDT_x2 SW_HT_
U 1 1 5F3A1333
P 4300 4250
F 0 "SW_HT_" H 4300 4535 50  0000 C CNN
F 1 "SW_DPDT_x2" H 4300 4444 50  0000 C CNN
F 2 "" H 4300 4250 50  0001 C CNN
F 3 "~" H 4300 4250 50  0001 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4250 4000 4250
Wire Wire Line
	4000 4250 4000 4950
Connection ~ 4000 4950
Wire Wire Line
	4600 4350 4500 4350
Text HLabel 4700 4150 2    50   Input ~ 0
SelecteurPolariteeMasse
Text GLabel 5150 3100 3    50   Input ~ 0
GND
Wire Wire Line
	5150 3100 5150 3000
Connection ~ 5200 4950
Wire Wire Line
	5200 4350 5200 4450
Wire Wire Line
	4000 4950 5200 4950
Text HLabel 4350 2350 0    50   Input ~ 0
SelectHV_1KV
Text HLabel 4350 2450 0    50   Input ~ 0
SelectHV_2KV
Text HLabel 4350 2550 0    50   Input ~ 0
SelectHV_3KV
$Comp
L Transformer:T2_ALS349 T2
U 1 1 5F3C7259
P 5150 2550
F 0 "T2" H 5150 3150 50  0000 C CNN
F 1 "T2_ALS349" H 5150 3050 50  0000 C CNN
F 2 "" H 5150 2550 50  0001 C CNN
F 3 "" H 5150 2550 50  0001 C CNN
	1    5150 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 2350 4350 2350
Wire Wire Line
	4350 2450 4750 2450
Wire Wire Line
	4750 2550 4350 2550
Wire Wire Line
	4500 4150 4700 4150
Text GLabel 4450 5550 0    50   Input ~ 0
~~110V
Wire Wire Line
	5050 5550 5050 5650
Connection ~ 5050 5650
Wire Wire Line
	5050 5650 5750 5650
Text GLabel 4600 2750 0    50   Input ~ 0
~~110V
Wire Wire Line
	4600 2750 4750 2750
$Comp
L Switch:SW_DPDT_x2 SW_HT_
U 2 1 5F3E7CF9
P 3100 3150
AR Path="/5F35DEEB/5F3E7CF9" Ref="SW_HT_"  Part="2" 
AR Path="/5F3E11CE/5F3E7CF9" Ref="SW_HT_?"  Part="2" 
F 0 "SW_HT_" H 3100 3435 50  0000 C CNN
F 1 "SW_DPDT_x2" H 3100 3344 50  0000 C CNN
F 2 "" H 3100 3150 50  0001 C CNN
F 3 "~" H 3100 3150 50  0001 C CNN
	2    3100 3150
	1    0    0    -1  
$EndComp
NoConn ~ 3300 3050
Wire Wire Line
	3300 3250 3500 3250
Connection ~ 3500 5450
Wire Wire Line
	3500 3250 3500 5450
Text HLabel 2750 3150 0    50   Input ~ 0
SelecteurHV_P
Wire Wire Line
	2750 3150 2900 3150
Text Notes 2050 5900 0    50   ~ 0
Bottom\nfuse holder\n
$Comp
L Device:Fuse F2
U 1 1 5F401CA7
P 2550 5750
F 0 "F2" V 2650 5750 50  0000 C CNN
F 1 "2A" V 2750 5750 50  0000 C CNN
F 2 "" V 2480 5750 50  0001 C CNN
F 3 "~" H 2550 5750 50  0001 C CNN
	1    2550 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 5950 1850 5950
Wire Wire Line
	4450 5550 5050 5550
Wire Wire Line
	5750 5750 4950 5750
Wire Wire Line
	5750 5850 4950 5850
Wire Wire Line
	4950 5650 5050 5650
$Comp
L Switch:SW_SP3T SelecteurTension
U 1 1 5F38366F
P 4750 5750
F 0 "SelecteurTension" H 4450 5650 50  0000 C CNN
F 1 "SW_SP3T" H 4700 5400 50  0001 C CNN
F 2 "" H 4125 5925 50  0001 C CNN
F 3 "~" H 4125 5925 50  0001 C CNN
	1    4750 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5750 4550 5750
Wire Wire Line
	3500 5450 5750 5450
Wire Wire Line
	1850 5750 2400 5750
Text Notes 2150 5550 0    50   ~ 0
top fuse \nholder
$Comp
L Valve:2X2A U4
U 1 1 5F4277DD
P 7200 2750
F 0 "U4" H 6972 2071 50  0000 R CNN
F 1 "2X2A" H 6972 1980 50  0000 R CNN
F 2 "" H 7200 2750 50  0001 C CNN
F 3 "" H 7200 2750 50  0001 C CNN
	1    7200 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 4250 7100 4250
Wire Wire Line
	7100 4250 7100 3950
Wire Wire Line
	6550 4450 7300 4450
Wire Wire Line
	7300 4450 7950 4450
Connection ~ 7300 4450
Wire Wire Line
	7300 4450 7300 3950
Wire Wire Line
	7200 2650 7200 3000
Wire Wire Line
	5550 2650 7200 2650
$Comp
L Device:C C?
U 1 1 5F435F1B
P 8400 2750
F 0 "C?" H 8650 2700 50  0000 R CNN
F 1 "0.1uF, 3kV" H 8950 2800 50  0000 R CNN
F 2 "" H 8438 2600 50  0001 C CNN
F 3 "~" H 8400 2750 50  0001 C CNN
	1    8400 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5F437B9C
P 8400 2150
F 0 "C?" H 8285 2104 50  0000 R CNN
F 1 "0.1uF, 3kV" H 8285 2195 50  0000 R CNN
F 2 "" H 8438 2000 50  0001 C CNN
F 3 "~" H 8400 2150 50  0001 C CNN
	1    8400 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 2300 8400 2450
Wire Wire Line
	5550 2450 8400 2450
Connection ~ 8400 2450
Wire Wire Line
	8400 2450 8400 2600
Text Label 6450 2450 0    50   ~ 0
vert
Text Label 6450 2650 0    50   ~ 0
HT
Wire Wire Line
	8400 2450 9050 2450
Wire Wire Line
	9050 2450 9050 1850
Wire Wire Line
	9050 2450 9050 3350
Connection ~ 9050 2450
Text HLabel 9050 3350 3    50   Input ~ 0
HVhookup
Text HLabel 7950 4450 2    50   Input ~ 0
FilamentHVhookup
Wire Notes Line
	8900 3350 9200 3350
Wire Notes Line
	9200 3350 9200 4600
Wire Notes Line
	9200 4600 7950 4600
Wire Notes Line
	7950 4600 7950 4300
Wire Notes Line
	7950 4300 8900 3350
Text Notes 8750 4600 0    50   ~ 0
boardOnTop
Text HLabel 8400 1850 1    50   Input ~ 0
SelecteurPolariteeRED
Wire Wire Line
	8400 1850 8400 2000
Text HLabel 9050 1850 1    50   Input ~ 0
SelecteurPolariteeHV
$EndSCHEMATC
