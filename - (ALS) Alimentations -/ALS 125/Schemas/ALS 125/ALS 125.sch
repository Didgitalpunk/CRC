EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Schema ALS 125"
Date "2021-04-06"
Rev "0"
Comp "CRC Collection Archives"
Comment1 "releve a partir d'une ALS125 fonctionelle"
Comment2 "Par Francois Mutschler"
Comment3 "contact: CRC.Archives.Collection@gmail.com"
Comment4 ""
$EndDescr
$Comp
L CRC_Transformers:T1-ALS125 T1
U 1 1 606F36AC
P 2850 9500
F 0 "T1" H 2850 10800 50  0001 C CNN
F 1 "T1-ALS125" H 2828 10674 50  0000 C CNN
F 2 "" H 2870 9500 50  0001 C CNN
F 3 "" H 2870 9500 50  0001 C CNN
	1    2850 9500
	1    0    0    -1  
$EndComp
$Comp
L CRC_Transformers:T2-ALS125 T2
U 1 1 606F4302
P 2800 2800
F 0 "T2" H 2800 4100 50  0001 C CNN
F 1 "T2-ALS125" H 2853 3974 50  0000 C CNN
F 2 "" H 2800 2800 50  0001 C CNN
F 3 "" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
$Comp
L CRC_symbol_starters:Interrupteur_DPDT SW1-CH1
U 1 1 606F5D7C
P 1650 9400
F 0 "SW1-CH1" H 1650 9767 50  0000 C CNN
F 1 "Interrupteur_DPDT" H 1650 9676 50  0000 C CNN
F 2 "" H 1650 9400 50  0001 C CNN
F 3 "" H 1650 9400 50  0001 C CNN
	1    1650 9400
	1    0    0    -1  
$EndComp
$Comp
L CRC_symbol_starters:Interrupteur_DPDT SW1-HT1
U 1 1 606F66A2
P 1600 2700
F 0 "SW1-HT1" H 1600 3067 50  0000 C CNN
F 1 "Interrupteur_DPDT" H 1600 2976 50  0000 C CNN
F 2 "" H 1600 2700 50  0001 C CNN
F 3 "" H 1600 2700 50  0001 C CNN
	1    1600 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1-CH1
U 1 1 606F75BA
P 2150 9300
F 0 "F1-CH1" V 2250 9300 50  0000 C CNN
F 1 "Fuse" V 2044 9300 50  0000 C CNN
F 2 "" V 2080 9300 50  0001 C CNN
F 3 "~" H 2150 9300 50  0001 C CNN
	1    2150 9300
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F1-HT1
U 1 1 606F8AC1
P 2100 3000
F 0 "F1-HT1" V 1903 3000 50  0000 C CNN
F 1 "Fuse" V 1994 3000 50  0000 C CNN
F 2 "" V 2030 3000 50  0001 C CNN
F 3 "~" H 2100 3000 50  0001 C CNN
	1    2100 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 9300 1850 9300
Wire Wire Line
	2300 9300 2450 9300
Wire Wire Line
	1850 9700 2450 9700
Wire Wire Line
	1950 3000 1800 3000
Wire Wire Line
	2400 3000 2250 3000
Wire Wire Line
	2400 2600 1800 2600
NoConn ~ 2400 2800
NoConn ~ 1800 2800
NoConn ~ 1850 9500
NoConn ~ 2450 9500
NoConn ~ 1850 9900
NoConn ~ 1800 3200
$Comp
L Connector:Conn_WallPlug P1-CH1
U 1 1 606FEDD8
P 750 9500
F 0 "P1-CH1" H 767 9825 50  0000 C CNN
F 1 "Conn_WallPlug" H 767 9734 50  0000 C CNN
F 2 "" H 1150 9500 50  0001 C CNN
F 3 "~" H 1150 9500 50  0001 C CNN
	1    750  9500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP_CH1
U 1 1 60700265
P 950 9100
F 0 "TP_CH1" V 1145 9172 50  0000 C CNN
F 1 "TestPoint" V 1054 9172 50  0000 C CNN
F 2 "" H 1150 9100 50  0001 C CNN
F 3 "~" H 1150 9100 50  0001 C CNN
	1    950  9100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP_CH2
U 1 1 607009F3
P 950 8800
F 0 "TP_CH2" V 1145 8872 50  0000 C CNN
F 1 "TestPoint" V 1054 8872 50  0000 C CNN
F 2 "" H 1150 8800 50  0001 C CNN
F 3 "~" H 1150 8800 50  0001 C CNN
	1    950  8800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  9600 1400 9600
Wire Wire Line
	1400 9600 1400 9800
Wire Wire Line
	1400 9800 1450 9800
Wire Wire Line
	1400 8800 950  8800
Wire Wire Line
	950  9100 1150 9100
Wire Wire Line
	1150 9100 1150 9400
$Comp
L Connector:Conn_WallPlug P1-HT1
U 1 1 60705E09
P 700 2800
F 0 "P1-HT1" H 717 3125 50  0000 C CNN
F 1 "Conn_WallPlug" H 717 3034 50  0000 C CNN
F 2 "" H 1100 2800 50  0001 C CNN
F 3 "~" H 1100 2800 50  0001 C CNN
	1    700  2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP_HT1
U 1 1 60705E0F
P 900 3200
F 0 "TP_HT1" V 1095 3272 50  0000 C CNN
F 1 "TestPoint" V 1004 3272 50  0000 C CNN
F 2 "" H 1100 3200 50  0001 C CNN
F 3 "~" H 1100 3200 50  0001 C CNN
	1    900  3200
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP_HT2
U 1 1 60705E15
P 900 3500
F 0 "TP_HT2" V 1095 3572 50  0000 C CNN
F 1 "TestPoint" V 1004 3572 50  0000 C CNN
F 2 "" H 1100 3500 50  0001 C CNN
F 3 "~" H 1100 3500 50  0001 C CNN
	1    900  3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  2900 1350 2900
Wire Wire Line
	1350 2900 1350 3100
Wire Wire Line
	1350 3100 1400 3100
Wire Wire Line
	1350 3500 900  3500
Wire Wire Line
	900  2700 1100 2700
Connection ~ 1350 3100
Wire Wire Line
	1350 3100 1350 3500
Wire Wire Line
	900  3200 1100 3200
Wire Wire Line
	1100 3200 1100 2700
Connection ~ 1100 2700
Wire Wire Line
	1100 2700 1400 2700
Text GLabel 2250 9100 0    50   Input ~ 0
CN13
Text GLabel 2250 8700 0    50   Input ~ 0
CN10
Text GLabel 2250 8900 0    50   Input ~ 0
CN12
Text GLabel 2250 8500 0    50   Input ~ 0
CN11
Wire Wire Line
	2250 8500 2450 8500
Wire Wire Line
	2450 8700 2250 8700
Wire Wire Line
	2250 8900 2450 8900
Wire Wire Line
	2250 9100 2450 9100
$Comp
L Device:Lamp L11-HT1
U 1 1 6071B753
P 3550 3100
F 0 "L11-HT1" V 3285 3100 50  0000 C CNN
F 1 "Lamp" V 3376 3100 50  0000 C CNN
F 2 "" V 3550 3200 50  0001 C CNN
F 3 "~" V 3550 3200 50  0001 C CNN
	1    3550 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2800 3800 2800
Wire Wire Line
	3800 2800 3800 3100
Wire Wire Line
	3800 3100 3750 3100
Wire Wire Line
	3350 3100 3300 3100
$Comp
L Device:Lamp L10-HT1
U 1 1 6071ECB8
P 3250 10300
F 0 "L10-HT1" V 2985 10300 50  0000 C CNN
F 1 "Lamp" V 3076 10300 50  0000 C CNN
F 2 "" V 3250 10400 50  0001 C CNN
F 3 "~" V 3250 10400 50  0001 C CNN
	1    3250 10300
	0    1    -1   0   
$EndComp
Wire Wire Line
	3050 10300 3050 10900
$Comp
L CRC_Lamps:ECC83 L04
U 1 1 6072273A
P 6150 1100
F 0 "L04" H 6050 1150 50  0000 L CNN
F 1 "ECC83" H 6378 1055 50  0000 L CNN
F 2 "Valve:Valve_Noval_P" H 6420 700 50  0001 C CNN
F 3 "http://www.r-type.org/pdfs/ecc83.pdf" H 6150 1100 50  0001 C CNN
	1    6150 1100
	0    -1   1    0   
$EndComp
$Comp
L CRC_Lamps:ECC83 L04
U 3 1 60725DCA
P 1450 10300
F 0 "L04" H 1400 10450 50  0000 L CNN
F 1 "ECC83" H 1350 10350 50  0000 L CNN
F 2 "Valve:Valve_Noval_P" H 1720 9900 50  0001 C CNN
F 3 "http://www.r-type.org/pdfs/ecc83.pdf" H 1450 10300 50  0001 C CNN
	3    1450 10300
	1    0    0    -1  
$EndComp
$Comp
L CRC_Lamps:ECC83 L02
U 3 1 6072E23E
P 1000 10300
F 0 "L02" H 950 10450 50  0000 L CNN
F 1 "ECC83" H 900 10350 50  0000 L CNN
F 2 "Valve:Valve_Noval_P" H 1270 9900 50  0001 C CNN
F 3 "http://www.r-type.org/pdfs/ecc83.pdf" H 1000 10300 50  0001 C CNN
	3    1000 10300
	1    0    0    -1  
$EndComp
$Comp
L CRC_Lamps:ECC83 L02
U 2 1 6072F96D
P 4450 5900
F 0 "L02" H 4678 5946 50  0000 L CNN
F 1 "ECC83" H 4678 5855 50  0000 L CNN
F 2 "Valve:Valve_Noval_P" H 4720 5500 50  0001 C CNN
F 3 "http://www.r-type.org/pdfs/ecc83.pdf" H 4450 5900 50  0001 C CNN
	2    4450 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 10750 1350 10800
Wire Wire Line
	1350 10800 1550 10800
Wire Wire Line
	1550 10800 1550 10750
Wire Wire Line
	1550 10800 1550 11100
Connection ~ 1550 10800
Wire Wire Line
	1450 10750 1450 10900
Wire Wire Line
	900  10750 900  10800
Wire Wire Line
	900  10800 1100 10800
Wire Wire Line
	1100 10800 1100 10750
Wire Wire Line
	1100 10800 1100 11100
Connection ~ 1100 10800
Wire Wire Line
	1000 10750 1000 10900
Wire Wire Line
	800  10900 1000 10900
Connection ~ 1000 10900
Wire Wire Line
	1000 10900 1450 10900
Connection ~ 1100 11100
Wire Wire Line
	1100 11100 1550 11100
Connection ~ 1450 10900
Connection ~ 1550 11100
Wire Wire Line
	1550 11100 2000 11100
Wire Wire Line
	3450 10300 3450 11100
Wire Wire Line
	1450 10900 1800 10900
Text GLabel 3400 9500 2    50   Input ~ 0
F1-9
Wire Wire Line
	3400 9500 3350 9500
Text GLabel 3400 9800 2    50   Input ~ 0
F1-8
Wire Wire Line
	3400 9800 3350 9800
Text GLabel 800  10900 0    50   Input ~ 0
F1-9
Text GLabel 800  11100 0    50   Input ~ 0
F1-8
Wire Wire Line
	800  11100 1100 11100
$Comp
L Device:CP C9
U 1 1 6076E153
P 3950 1800
F 0 "C9" V 4205 1800 50  0000 C CNN
F 1 "CP" V 4114 1800 50  0000 C CNN
F 2 "" H 3988 1650 50  0001 C CNN
F 3 "~" H 3950 1800 50  0001 C CNN
	1    3950 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 1800 5250 1800
$Comp
L Device:R R4
U 1 1 6076BEDA
P 5400 1800
F 0 "R4" V 5500 1800 50  0000 C CNN
F 1 "270k" V 5400 1800 50  0000 C CNN
F 2 "" V 5330 1800 50  0001 C CNN
F 3 "~" H 5400 1800 50  0001 C CNN
	1    5400 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 1800 3300 1800
$Comp
L Device:D D1
U 1 1 60768843
P 3500 1800
F 0 "D1" H 3500 1584 50  0000 C CNN
F 1 "D" H 3500 1675 50  0000 C CNN
F 2 "" H 3500 1800 50  0001 C CNN
F 3 "~" H 3500 1800 50  0001 C CNN
	1    3500 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 1800 3750 1800
Wire Wire Line
	4100 1800 4200 1800
Wire Wire Line
	3300 2100 3350 2100
Connection ~ 4950 1800
$Comp
L CRC_Lamps:EL81 L06
U 2 1 6078A5D2
P 2350 10450
F 0 "L06" H 2300 10750 50  0000 L CNN
F 1 "EL81" H 2300 10650 50  0000 L CNN
F 2 "" H 2350 10450 50  0001 C CNN
F 3 "" H 2350 10450 50  0001 C CNN
	2    2350 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 10650 2250 10900
Connection ~ 2250 10900
Wire Wire Line
	2250 10900 2700 10900
Wire Wire Line
	2450 10650 2450 11100
Connection ~ 2450 11100
Wire Wire Line
	2450 11100 2900 11100
$Comp
L Device:R R1
U 1 1 607A5B13
P 6800 1000
F 0 "R1" H 6870 1046 50  0000 L CNN
F 1 "150k" H 6870 955 50  0000 L CNN
F 2 "" V 6730 1000 50  0001 C CNN
F 3 "~" H 6800 1000 50  0001 C CNN
	1    6800 1000
	0    -1   1    0   
$EndComp
Wire Wire Line
	6650 1000 6600 1000
$Comp
L Device:R R2
U 1 1 607A80F6
P 5500 1100
F 0 "R2" H 5570 1146 50  0000 L CNN
F 1 "1k" V 5500 1050 50  0000 L CNN
F 2 "" V 5430 1100 50  0001 C CNN
F 3 "~" H 5500 1100 50  0001 C CNN
	1    5500 1100
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 1100 5750 1100
Wire Wire Line
	3950 2450 3950 2650
$Comp
L Device:R R9
U 1 1 607B7F8E
P 3950 2800
F 0 "R9" V 3743 2800 50  0000 C CNN
F 1 "150k" V 3834 2800 50  0000 C CNN
F 2 "" V 3880 2800 50  0001 C CNN
F 3 "~" H 3950 2800 50  0001 C CNN
	1    3950 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 2850 6050 2850
$Comp
L Device:CP C8
U 1 1 607ABB09
P 5950 2450
F 0 "C8" V 5695 2450 50  0000 C CNN
F 1 "8uF" V 5786 2450 50  0000 C CNN
F 2 "" H 5988 2300 50  0001 C CNN
F 3 "~" H 5950 2450 50  0001 C CNN
	1    5950 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 2450 6100 2450
Text GLabel 2300 2200 0    50   Input ~ 0
GndT2
Text GLabel 6050 2850 0    50   Input ~ 0
GndT2
Wire Wire Line
	6150 2450 6250 2450
$Comp
L Device:R R6
U 1 1 607C714B
P 6400 2450
F 0 "R6" V 6300 2450 50  0000 C CNN
F 1 "100k" V 6400 2450 50  0000 C CNN
F 2 "" V 6330 2450 50  0001 C CNN
F 3 "~" H 6400 2450 50  0001 C CNN
	1    6400 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 607CB375
P 6900 2450
F 0 "R7" V 6800 2450 50  0000 C CNN
F 1 "100k" V 6900 2450 50  0000 C CNN
F 2 "" V 6830 2450 50  0001 C CNN
F 3 "~" H 6900 2450 50  0001 C CNN
	1    6900 2450
	0    1    1    0   
$EndComp
$Comp
L Device:CP C4
U 1 1 607D1A1E
P 6400 2850
F 0 "C4" V 6145 2850 50  0000 C CNN
F 1 "32uF" V 6236 2850 50  0000 C CNN
F 2 "" H 6438 2700 50  0001 C CNN
F 3 "~" H 6400 2850 50  0001 C CNN
	1    6400 2850
	0    1    1    0   
$EndComp
$Comp
L Device:CP C5
U 1 1 607D360A
P 6400 3250
F 0 "C5" V 6145 3250 50  0000 C CNN
F 1 "32uF" V 6236 3250 50  0000 C CNN
F 2 "" H 6438 3100 50  0001 C CNN
F 3 "~" H 6400 3250 50  0001 C CNN
	1    6400 3250
	0    1    1    0   
$EndComp
$Comp
L Device:CP C7
U 1 1 607D74D2
P 6900 2850
F 0 "C7" V 6645 2850 50  0000 C CNN
F 1 "32uF" V 6736 2850 50  0000 C CNN
F 2 "" H 6938 2700 50  0001 C CNN
F 3 "~" H 6900 2850 50  0001 C CNN
	1    6900 2850
	0    1    1    0   
$EndComp
$Comp
L Device:CP C6
U 1 1 607D74D8
P 6900 3250
F 0 "C6" V 6645 3250 50  0000 C CNN
F 1 "32uF" V 6736 3250 50  0000 C CNN
F 2 "" H 6938 3100 50  0001 C CNN
F 3 "~" H 6900 3250 50  0001 C CNN
	1    6900 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 2850 6650 2850
Wire Wire Line
	6650 2850 6650 3250
Wire Wire Line
	6650 2850 6750 2850
Wire Wire Line
	6750 3250 6650 3250
Connection ~ 6650 3250
Wire Wire Line
	6550 3250 6650 3250
Wire Wire Line
	6550 2450 6650 2450
Wire Wire Line
	6650 2850 6650 2450
Connection ~ 6650 2850
Connection ~ 6650 2450
Wire Wire Line
	6650 2450 6750 2450
Wire Wire Line
	7050 2850 7150 2850
Wire Wire Line
	7150 2850 7150 2450
Wire Wire Line
	7150 2450 7050 2450
Wire Wire Line
	7150 2850 7150 3250
Connection ~ 7150 2850
Connection ~ 7150 2450
Wire Wire Line
	6150 3250 6250 3250
Connection ~ 6150 2450
Wire Wire Line
	6250 2850 6150 2850
$Comp
L CRC_Lamps:5R4 L09
U 2 1 60822A6B
P 7250 1850
F 0 "L09" V 7615 2067 50  0000 C CNN
F 1 "5R4" V 7524 2067 50  0000 C CNN
F 2 "" H 7250 1950 50  0001 C CNN
F 3 "" H 7250 1950 50  0001 C CNN
	2    7250 1850
	0    -1   -1   0   
$EndComp
$Comp
L CRC_Lamps:5R4 L09
U 1 1 6082B513
P 1200 2000
F 0 "L09" V 1565 2308 50  0000 C CNN
F 1 "5R4" V 1474 2308 50  0000 C CNN
F 2 "" H 1200 2100 50  0001 C CNN
F 3 "" H 1200 2100 50  0001 C CNN
	1    1200 2000
	0    1    -1   0   
$EndComp
Wire Wire Line
	6600 1000 6600 1900
Wire Wire Line
	6600 1900 6550 1900
Connection ~ 6600 1000
Wire Wire Line
	6600 1000 6550 1000
Text GLabel 3400 8500 2    50   Input ~ 0
F3-13
Text GLabel 3400 8800 2    50   Input ~ 0
F3-12
Wire Wire Line
	3350 8800 3400 8800
Wire Wire Line
	3400 8500 3350 8500
Text GLabel 7550 1950 2    50   Input ~ 0
F3-13
Text GLabel 7550 1750 2    50   Input ~ 0
F3-12
Wire Wire Line
	7550 1750 7350 1750
$Comp
L Connector_Generic:Conn_02x07_Top_Bottom PR1
U 1 1 6085CAED
P 9850 10150
F 0 "PR1" V 9854 10530 50  0000 L CNN
F 1 "Connecteur fond de panier" V 9950 10500 50  0000 L CNN
F 2 "" H 9850 10150 50  0001 C CNN
F 3 "~" H 9850 10150 50  0001 C CNN
	1    9850 10150
	0    1    1    0   
$EndComp
Text GLabel 9850 9500 1    50   Input ~ 0
CN4
Wire Wire Line
	9850 9500 9850 9750
Text GLabel 7550 2100 2    50   Input ~ 0
CN4
Wire Wire Line
	7550 2100 7400 2100
Wire Wire Line
	7400 1950 7400 2100
Connection ~ 7400 1950
Wire Wire Line
	7400 1950 7350 1950
Wire Wire Line
	7400 1950 7550 1950
Wire Wire Line
	7150 2450 7400 2450
Connection ~ 7400 2100
Wire Wire Line
	7400 2100 7400 2300
Wire Wire Line
	7400 2300 7500 2300
Connection ~ 7400 2300
Wire Wire Line
	1850 1900 2400 1900
Wire Wire Line
	2400 1900 2400 2000
Wire Wire Line
	2400 2400 1950 2400
Wire Wire Line
	1950 2400 1950 2100
Wire Wire Line
	1950 2100 1850 2100
$Comp
L Device:R R5
U 1 1 60893E13
P 7650 2300
F 0 "R5" V 7550 2300 50  0000 C CNN
F 1 "270k" V 7650 2300 50  0000 C CNN
F 2 "" V 7580 2300 50  0001 C CNN
F 3 "~" H 7650 2300 50  0001 C CNN
	1    7650 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3000 7450 3000
Wire Wire Line
	7050 3250 7150 3250
Wire Wire Line
	7400 2300 7400 2450
Wire Wire Line
	7800 2300 8050 2300
Wire Wire Line
	3300 2450 3950 2450
$Comp
L Device:R R8
U 1 1 6096501E
P 8050 2500
F 0 "R8" H 7980 2546 50  0000 R CNN
F 1 "1k" H 7980 2455 50  0000 R CNN
F 2 "" V 7980 2500 50  0001 C CNN
F 3 "~" H 8050 2500 50  0001 C CNN
	1    8050 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8050 2350 8050 2300
Connection ~ 8050 2300
Wire Wire Line
	8050 2650 8050 2700
$Comp
L Device:R R11
U 1 1 6097F23A
P 8150 3350
F 0 "R11" V 8250 3350 50  0000 C CNN
F 1 "100R" V 8150 3350 50  0000 C CNN
F 2 "" V 8080 3350 50  0001 C CNN
F 3 "~" H 8150 3350 50  0001 C CNN
	1    8150 3350
	0    -1   1    0   
$EndComp
Wire Wire Line
	8000 3350 7950 3350
$Comp
L Device:R R10
U 1 1 60988690
P 8550 2900
F 0 "R10" V 8757 2900 50  0000 C CNN
F 1 "27R" V 8666 2900 50  0000 C CNN
F 2 "" V 8480 2900 50  0001 C CNN
F 3 "~" H 8550 2900 50  0001 C CNN
	1    8550 2900
	0    1    -1   0   
$EndComp
Wire Wire Line
	8400 2900 8350 2900
Wire Wire Line
	8700 2900 8750 2900
Text GLabel 8400 3350 2    50   Input ~ 0
L8-4
Wire Wire Line
	8400 3350 8300 3350
Text GLabel 3850 1600 2    50   Input ~ 0
L8-4
Wire Wire Line
	3850 1600 3750 1600
Wire Wire Line
	3750 1600 3750 1800
Connection ~ 3750 1800
Wire Wire Line
	3750 1800 3650 1800
$Comp
L Device:R R20
U 1 1 609C1185
P 3050 5700
F 0 "R20" V 3257 5700 50  0000 C CNN
F 1 "1M" V 3166 5700 50  0000 C CNN
F 2 "" V 2980 5700 50  0001 C CNN
F 3 "~" H 3050 5700 50  0001 C CNN
	1    3050 5700
	1    0    0    -1  
$EndComp
Text GLabel 3400 9000 2    50   Input ~ 0
F2-11
Text GLabel 3400 9300 2    50   Input ~ 0
F2-10
Wire Wire Line
	3350 9300 3400 9300
Wire Wire Line
	3400 9000 3350 9000
Text GLabel 3900 11100 0    50   Input ~ 0
F2-11
Text GLabel 3900 10900 0    50   Input ~ 0
F2-10
Wire Wire Line
	3900 10900 4000 10900
Wire Wire Line
	3900 11100 4200 11100
Connection ~ 4000 10900
Connection ~ 4200 11100
Wire Wire Line
	4200 11100 4650 11100
Wire Wire Line
	4000 10900 4450 10900
Wire Wire Line
	4450 10900 4450 10650
Wire Wire Line
	4650 11100 4650 10650
$Comp
L Device:C C12
U 1 1 60A64893
P 3050 6150
F 0 "C12" H 2935 6104 50  0000 R CNN
F 1 "50nF" H 2935 6195 50  0000 R CNN
F 2 "" H 3088 6000 50  0001 C CNN
F 3 "~" H 3050 6150 50  0001 C CNN
	1    3050 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  9400 1150 9400
Connection ~ 1150 9400
Wire Wire Line
	1150 9400 1450 9400
Connection ~ 1400 9600
Wire Wire Line
	1400 9600 1400 8800
Wire Notes Line
	3400 5450 3400 6350
Wire Notes Line
	3400 6350 2900 6350
Wire Notes Line
	2900 6350 2900 5450
Wire Notes Line
	2900 5450 3400 5450
Text Notes 3350 5500 3    50   ~ 0
VB\n
$Comp
L Device:C C10
U 1 1 60B92DBD
P 5750 7600
F 0 "C10" V 5498 7600 50  0000 C CNN
F 1 "10n" V 5589 7600 50  0000 C CNN
F 2 "" H 5788 7450 50  0001 C CNN
F 3 "~" H 5750 7600 50  0001 C CNN
	1    5750 7600
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 60B9A33A
P 7950 7600
F 0 "R29" V 8050 7550 50  0000 L CNN
F 1 "5K" V 7950 7550 50  0000 L CNN
F 2 "" V 7880 7600 50  0001 C CNN
F 3 "~" H 7950 7600 50  0001 C CNN
	1    7950 7600
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 7600 7700 7600
Connection ~ 7700 7600
Wire Wire Line
	7700 7600 5900 7600
Connection ~ 3950 2450
Wire Wire Line
	3950 2450 5650 2450
$Comp
L CRC_Lamps:6AU6 L03
U 1 1 60CA141C
P 4050 4000
F 0 "L03" H 4400 4050 50  0000 R CNN
F 1 "6AU6" H 4400 3950 50  0000 R CNN
F 2 "" H 4050 4000 50  0001 C CNN
F 3 "" H 4050 4000 50  0001 C CNN
	1    4050 4000
	1    0    0    1   
$EndComp
$Comp
L CRC_Lamps:6AU6 L07
U 1 1 60CA1713
P 9100 7700
F 0 "L07" V 9054 8394 50  0000 L CNN
F 1 "6AU6" V 9145 8394 50  0000 L CNN
F 2 "" H 9100 7700 50  0001 C CNN
F 3 "" H 9100 7700 50  0001 C CNN
	1    9100 7700
	0    1    1    0   
$EndComp
$Comp
L CRC_Lamps:6AU6 L07
U 2 1 60CB14E1
P 2800 10550
F 0 "L07" H 2750 10950 50  0000 L CNN
F 1 "6AU6" H 2750 10850 50  0000 L CNN
F 2 "" H 2800 10550 50  0001 C CNN
F 3 "" H 2800 10550 50  0001 C CNN
	2    2800 10550
	1    0    0    -1  
$EndComp
$Comp
L CRC_Lamps:6AU6 L03
U 2 1 60CB1E66
P 4100 10500
F 0 "L03" H 4050 10850 50  0000 L CNN
F 1 "6AU6" H 4050 10750 50  0000 L CNN
F 2 "" H 4100 10500 50  0001 C CNN
F 3 "" H 4100 10500 50  0001 C CNN
	2    4100 10500
	1    0    0    -1  
$EndComp
Text GLabel 8300 2300 2    50   Input ~ 0
L3-5
Wire Wire Line
	8300 2300 8050 2300
Text GLabel 3700 4250 3    50   Input ~ 0
L4-1
Text GLabel 5500 1450 0    50   Input ~ 0
L4-1
Wire Wire Line
	5500 1450 5650 1450
Wire Wire Line
	5550 1800 5650 1800
$Comp
L Device:R R3
U 1 1 60D3E2E3
P 5650 1600
F 0 "R3" V 5750 1600 50  0000 C CNN
F 1 "1k" V 5650 1600 50  0000 C CNN
F 2 "" V 5580 1600 50  0001 C CNN
F 3 "~" H 5650 1600 50  0001 C CNN
	1    5650 1600
	1    0    0    1   
$EndComp
Wire Wire Line
	5650 1750 5650 1800
Connection ~ 5650 1800
Wire Wire Line
	5650 1800 5750 1800
Wire Wire Line
	7950 3350 7950 3300
$Comp
L Device:R R12
U 1 1 609B2C8C
P 4700 3700
F 0 "R12" V 4800 3750 50  0000 R CNN
F 1 "250k" V 4700 3800 50  0000 R CNN
F 2 "" V 4630 3700 50  0001 C CNN
F 3 "~" H 4700 3700 50  0001 C CNN
	1    4700 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 4250 4350 4250
Wire Wire Line
	8750 2900 8750 3900
Connection ~ 4950 4250
Text GLabel 9650 10850 3    50   Input ~ 0
CN13
Text GLabel 9950 10850 3    50   Input ~ 0
CN10
Text GLabel 9750 10850 3    50   Input ~ 0
CN12
Text GLabel 9850 10850 3    50   Input ~ 0
CN11
Wire Wire Line
	9650 10850 9650 10750
Wire Wire Line
	9750 10450 9750 10700
Wire Wire Line
	9850 10450 9850 10650
Wire Wire Line
	9950 10450 9950 10600
$Comp
L Connector:Conn_Coaxial J1
U 1 1 60F3C671
P 10150 9300
F 0 "J1" V 10387 9229 50  0000 C CNN
F 1 "Conn_Coaxial" V 10296 9229 50  0000 C CNN
F 2 "" H 10150 9300 50  0001 C CNN
F 3 " ~" H 10150 9300 50  0001 C CNN
	1    10150 9300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 9500 10150 9900
Text GLabel 10050 10850 3    50   Input ~ 0
CN9
Wire Wire Line
	10050 10850 10050 10750
Text GLabel 6050 3050 0    50   Input ~ 0
CN9
Wire Wire Line
	6050 3050 6150 3050
Wire Wire Line
	3950 2450 3950 2350
Wire Wire Line
	3950 2350 3850 2350
Text GLabel 10150 10850 3    50   Input ~ 0
CN8
Wire Wire Line
	10150 10850 10150 10500
Text GLabel 3850 2350 0    50   Input ~ 0
CN8
Text GLabel 9650 9500 1    50   Input ~ 0
masse
Wire Wire Line
	9650 9500 9650 9650
$Comp
L Connector_Generic:Conn_02x07_Top_Bottom PR3
U 1 1 60F91CEC
P 8050 10150
F 0 "PR3" V 8054 10530 50  0000 L CNN
F 1 "Connecteur fond de panier" V 8145 10530 50  0000 L CNN
F 2 "" H 8050 10150 50  0001 C CNN
F 3 "~" H 8050 10150 50  0001 C CNN
	1    8050 10150
	0    1    1    0   
$EndComp
NoConn ~ 9550 9950
NoConn ~ 7750 9950
$Comp
L Connector_Generic:Conn_02x07_Top_Bottom PR2
U 1 1 60FF047E
P 6250 10150
F 0 "PR2" V 6254 10530 50  0000 L CNN
F 1 "Connecteur fond de panier" V 6345 10530 50  0000 L CNN
F 2 "" H 6250 10150 50  0001 C CNN
F 3 "~" H 6250 10150 50  0001 C CNN
	1    6250 10150
	0    1    1    0   
$EndComp
NoConn ~ 5950 9950
Wire Wire Line
	10150 10500 8350 10500
Wire Wire Line
	8350 10500 8350 10450
Connection ~ 10150 10500
Wire Wire Line
	10150 10500 10150 10450
Wire Wire Line
	8350 10500 6550 10500
Wire Wire Line
	6550 10500 6550 10450
Connection ~ 8350 10500
Wire Wire Line
	6450 10450 6450 10550
Wire Wire Line
	6450 10550 8250 10550
Wire Wire Line
	8250 10550 8250 10450
Wire Wire Line
	8250 10550 10050 10550
Connection ~ 8250 10550
Connection ~ 10050 10550
Wire Wire Line
	10050 10550 10050 10450
Wire Wire Line
	9950 10600 8150 10600
Wire Wire Line
	6350 10600 6350 10550
Connection ~ 9950 10600
Wire Wire Line
	9950 10600 9950 10850
Wire Wire Line
	6250 10450 6250 10650
Wire Wire Line
	6250 10650 8050 10650
Connection ~ 9850 10650
Wire Wire Line
	9850 10650 9850 10850
Wire Wire Line
	9750 10700 7950 10700
Wire Wire Line
	6150 10700 6150 10450
Connection ~ 9750 10700
Wire Wire Line
	9750 10700 9750 10850
Wire Wire Line
	6050 10450 6050 10750
Wire Wire Line
	6050 10750 7850 10750
Connection ~ 9650 10750
Wire Wire Line
	9650 10750 9650 10450
Wire Wire Line
	10150 9900 8350 9900
Wire Wire Line
	6550 9900 6550 9950
Connection ~ 10150 9900
Wire Wire Line
	10150 9900 10150 9950
Wire Wire Line
	8350 9900 8350 9950
Connection ~ 8350 9900
Wire Wire Line
	8350 9900 6550 9900
Wire Wire Line
	8150 10450 8150 10600
Connection ~ 8150 10600
Wire Wire Line
	8150 10600 6350 10600
Wire Wire Line
	8050 10450 8050 10650
Connection ~ 8050 10650
Wire Wire Line
	8050 10650 9850 10650
Wire Wire Line
	7950 10700 7950 10450
Connection ~ 7950 10700
Wire Wire Line
	7950 10700 6150 10700
Wire Wire Line
	7850 10450 7850 10750
Connection ~ 7850 10750
Wire Wire Line
	7850 10750 9650 10750
Text GLabel 9550 10850 3    50   Input ~ 0
CN14
Wire Wire Line
	9550 10850 9550 10800
Wire Wire Line
	9550 10800 7750 10800
Wire Wire Line
	5950 10800 5950 10450
Connection ~ 9550 10800
Wire Wire Line
	9550 10800 9550 10450
Wire Wire Line
	7750 10800 7750 10450
Connection ~ 7750 10800
Wire Wire Line
	10050 9950 10050 9850
Wire Wire Line
	10050 9850 8250 9850
Wire Wire Line
	6450 9850 6450 9950
Wire Wire Line
	6350 9950 6350 9800
Wire Wire Line
	6350 9800 8150 9800
Wire Wire Line
	9950 9800 9950 9950
Wire Wire Line
	9850 9750 8050 9750
Wire Wire Line
	6250 9750 6250 9950
Connection ~ 9850 9750
Wire Wire Line
	9850 9750 9850 9950
Wire Wire Line
	6150 9950 6150 9700
Wire Wire Line
	6150 9700 7950 9700
Wire Wire Line
	9750 9700 9750 9950
Wire Wire Line
	9650 9650 7850 9650
Wire Wire Line
	6050 9650 6050 9950
Connection ~ 9650 9650
Wire Wire Line
	9650 9650 9650 9950
Wire Wire Line
	8250 9950 8250 9850
Connection ~ 8250 9850
Wire Wire Line
	8250 9850 6450 9850
Wire Wire Line
	8150 9800 8150 9950
Connection ~ 8150 9800
Wire Wire Line
	8150 9800 9950 9800
Wire Wire Line
	8050 9950 8050 9750
Connection ~ 8050 9750
Wire Wire Line
	8050 9750 6250 9750
Wire Wire Line
	7950 9950 7950 9700
Connection ~ 7950 9700
Wire Wire Line
	7950 9700 9750 9700
Wire Wire Line
	7850 9950 7850 9650
Connection ~ 7850 9650
Wire Wire Line
	7850 9650 6050 9650
Text GLabel 3500 2000 2    50   Input ~ 0
CN14
Wire Wire Line
	3350 2000 3500 2000
Wire Wire Line
	3350 2000 3350 2100
Connection ~ 3350 2100
Wire Wire Line
	4950 1800 4950 1100
Wire Wire Line
	4950 1100 5350 1100
$Comp
L Device:R R14
U 1 1 61352060
P 9750 3900
F 0 "R14" V 9957 3900 50  0000 C CNN
F 1 "1M" V 9866 3900 50  0000 C CNN
F 2 "" V 9680 3900 50  0001 C CNN
F 3 "~" H 9750 3900 50  0001 C CNN
	1    9750 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	9900 3900 10150 3900
Wire Wire Line
	9600 3900 9550 3900
$Comp
L Device:C C13
U 1 1 61352069
P 9300 3900
F 0 "C13" V 9048 3900 50  0000 C CNN
F 1 "50nF" V 9139 3900 50  0000 C CNN
F 2 "" H 9338 3750 50  0001 C CNN
F 3 "~" H 9300 3900 50  0001 C CNN
	1    9300 3900
	0    -1   1    0   
$EndComp
Wire Wire Line
	9450 3900 9550 3900
Connection ~ 9550 3900
Wire Wire Line
	8750 3900 9150 3900
Wire Notes Line
	10000 3500 9100 3500
Wire Notes Line
	9100 3500 9100 4050
Wire Notes Line
	9100 4050 10000 4050
Wire Notes Line
	10000 4050 10000 3500
Text Notes 9950 3650 2    50   ~ 0
VB\n
Connection ~ 8750 4250
$Comp
L Connector:TestPoint TP1_+250V1
U 1 1 61397778
P 8850 2900
F 0 "TP1_+250V1" V 8900 2850 50  0000 L CNN
F 1 "TestPoint" V 8800 2850 50  0000 L CNN
F 2 "" H 9050 2900 50  0001 C CNN
F 3 "~" H 9050 2900 50  0001 C CNN
	1    8850 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 2900 8750 2900
Wire Wire Line
	6150 800  6150 750 
Wire Wire Line
	6150 750  9550 750 
$Comp
L Device:R_POT RV-150v1
U 1 1 613C617B
P 10300 3900
F 0 "RV-150v1" H 10230 3854 50  0000 R CNN
F 1 "10K lin20%" H 10230 3945 50  0000 R CNN
F 2 "" H 10300 3900 50  0001 C CNN
F 3 "~" H 10300 3900 50  0001 C CNN
	1    10300 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 3650 10300 3750
$Comp
L Device:R R13
U 1 1 613C7A2F
P 10300 3500
F 0 "R13" H 10231 3454 50  0000 R CNN
F 1 "80K" H 10231 3545 50  0000 R CNN
F 2 "" V 10230 3500 50  0001 C CNN
F 3 "~" H 10300 3500 50  0001 C CNN
	1    10300 3500
	1    0    0    1   
$EndComp
Wire Wire Line
	10300 4150 10300 4050
$Comp
L Device:R R16
U 1 1 613F94B1
P 10300 4300
F 0 "R16" H 10370 4346 50  0000 L CNN
F 1 "60K" H 10370 4255 50  0000 L CNN
F 2 "" V 10230 4300 50  0001 C CNN
F 3 "~" H 10300 4300 50  0001 C CNN
	1    10300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1000 10300 1000
Wire Wire Line
	10300 1000 10300 3050
Wire Wire Line
	10300 3050 10850 3050
Wire Wire Line
	10850 3050 10850 6750
Wire Wire Line
	10850 6750 7700 6750
Connection ~ 10300 3050
Wire Wire Line
	10300 3050 10300 3350
$Comp
L Device:R R24
U 1 1 61506277
P 7050 6750
F 0 "R24" V 6950 6700 50  0000 L CNN
F 1 "150K" V 7050 6650 50  0000 L CNN
F 2 "" V 6980 6750 50  0001 C CNN
F 3 "~" H 7050 6750 50  0001 C CNN
	1    7050 6750
	0    1    1    0   
$EndComp
Connection ~ 7700 6750
Wire Wire Line
	7700 6750 7200 6750
Wire Wire Line
	7700 7000 7700 6750
Wire Wire Line
	6900 7100 6900 7000
$Comp
L Connector:TestPoint TP3_-150V1
U 1 1 60C3E9E2
P 6900 7100
F 0 "TP3_-150V1" V 6950 7050 50  0000 L CNN
F 1 "TestPoint" V 6850 7050 50  0000 L CNN
F 2 "" H 7100 7100 50  0001 C CNN
F 3 "~" H 7100 7100 50  0001 C CNN
	1    6900 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 7600 7700 7350
Connection ~ 7700 7000
Wire Wire Line
	3050 6450 3050 6300
Wire Wire Line
	7700 7350 7800 7350
Connection ~ 7700 7350
Wire Wire Line
	6600 1900 6600 2150
Wire Wire Line
	6600 2150 5650 2150
Wire Wire Line
	5650 2150 5650 2450
Connection ~ 6600 1900
Connection ~ 5650 2450
Wire Wire Line
	5650 2450 5800 2450
Connection ~ 8750 2900
Wire Wire Line
	3350 2100 4200 2100
Wire Wire Line
	4850 3700 4950 3700
Wire Wire Line
	4050 4700 4050 4650
Text GLabel 4050 4700 3    50   Input ~ 0
L3-5
Connection ~ 6150 2850
Wire Wire Line
	6150 2850 6150 2950
Wire Wire Line
	6150 2100 6150 2450
Wire Wire Line
	6150 2450 6150 2700
$Comp
L CRC_Lamps:ECC83 L04
U 2 1 60723911
P 6150 1800
F 0 "L04" H 6100 1850 50  0000 L CNN
F 1 "ECC83" H 6378 1755 50  0000 L CNN
F 2 "Valve:Valve_Noval_P" H 6420 1400 50  0001 C CNN
F 3 "http://www.r-type.org/pdfs/ecc83.pdf" H 6150 1800 50  0001 C CNN
	2    6150 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 1800 4200 2100
Connection ~ 4200 1800
Wire Wire Line
	4200 1800 4950 1800
Wire Wire Line
	4950 1800 4950 3700
Wire Wire Line
	4350 4350 4450 4350
$Comp
L Device:R R27
U 1 1 61C27AFC
P 7950 7350
F 0 "R27" V 8050 7350 50  0000 C CNN
F 1 "1M" V 7950 7350 50  0000 C CNN
F 2 "" V 7880 7350 50  0001 C CNN
F 3 "~" H 7950 7350 50  0001 C CNN
	1    7950 7350
	0    1    -1   0   
$EndComp
$Comp
L Device:R R28
U 1 1 61C5FD3D
P 9050 7350
F 0 "R28" V 8950 7250 50  0000 L CNN
F 1 "1k" V 9050 7300 50  0000 L CNN
F 2 "" V 8980 7350 50  0001 C CNN
F 3 "~" H 9050 7350 50  0001 C CNN
	1    9050 7350
	0    -1   1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 61C7D1AA
P 8750 7100
F 0 "R25" V 8650 7100 50  0000 C CNN
F 1 "4M" V 8750 7100 50  0000 C CNN
F 2 "" V 8680 7100 50  0001 C CNN
F 3 "~" H 8750 7100 50  0001 C CNN
	1    8750 7100
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 61C7D7FE
P 8450 7100
F 0 "C11" H 8335 7054 50  0000 R CNN
F 1 "1n" H 8335 7145 50  0000 R CNN
F 2 "" H 8488 6950 50  0001 C CNN
F 3 "~" H 8450 7100 50  0001 C CNN
	1    8450 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 7250 8450 7350
Wire Wire Line
	8750 7350 8750 7250
$Comp
L Device:R R26
U 1 1 61CD4BDA
P 9050 6500
F 0 "R26" V 8950 6450 50  0000 L CNN
F 1 "450K" V 9050 6400 50  0000 L CNN
F 2 "" V 8980 6500 50  0001 C CNN
F 3 "~" H 9050 6500 50  0001 C CNN
	1    9050 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 6500 8750 6500
Wire Wire Line
	2700 10750 2700 10900
Connection ~ 2700 10900
Wire Wire Line
	2700 10900 3050 10900
Wire Wire Line
	2900 10750 2900 11100
Connection ~ 2900 11100
Wire Wire Line
	2900 11100 3450 11100
Wire Wire Line
	9250 7350 9250 7400
Wire Wire Line
	3950 2950 3950 3250
Wire Wire Line
	4550 3700 3950 3700
$Comp
L Device:R_POT RV+250v1
U 1 1 609B13F0
P 3950 3400
F 0 "RV+250v1" H 3880 3354 50  0000 R CNN
F 1 "20K lin20%" H 3880 3445 50  0000 R CNN
F 2 "" H 3950 3400 50  0001 C CNN
F 3 "~" H 3950 3400 50  0001 C CNN
	1    3950 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 5550 3050 3400
Wire Wire Line
	3050 6450 5000 6450
Connection ~ 5000 6450
Wire Wire Line
	6650 7000 6900 7000
NoConn ~ 6650 7100
NoConn ~ 6650 7200
NoConn ~ 5850 7050
Connection ~ 5500 7150
Wire Wire Line
	5850 7150 5500 7150
Wire Wire Line
	5500 6200 5500 6450
Wire Wire Line
	5900 6750 6900 6750
Wire Wire Line
	5600 7600 5500 7600
Wire Wire Line
	6450 6200 5500 6200
$Comp
L Device:R R23
U 1 1 60AFCE31
P 5250 6450
F 0 "R23" V 5150 6400 50  0000 L CNN
F 1 "15K" V 5250 6350 50  0000 L CNN
F 2 "" V 5180 6450 50  0001 C CNN
F 3 "~" H 5250 6450 50  0001 C CNN
	1    5250 6450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2_masse1
U 1 1 60AA8BC5
P 3000 6450
F 0 "TP2_masse1" H 2750 6750 50  0000 L CNN
F 1 "TestPoint" H 2850 6650 50  0000 L CNN
F 2 "" H 3200 6450 50  0001 C CNN
F 3 "~" H 3200 6450 50  0001 C CNN
	1    3000 6450
	0    -1   -1   0   
$EndComp
$Comp
L CRC_Lamps:85A2 L01
U 1 1 607445F9
P 6250 7100
F 0 "L01" V 6400 7100 50  0000 C CNN
F 1 "85A2" V 6100 7100 50  0000 C CNN
F 2 "" H 6250 7100 50  0001 C CNN
F 3 "" H 6250 7100 50  0001 C CNN
	1    6250 7100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 6450 5000 6450
Wire Wire Line
	5400 6450 5500 6450
Connection ~ 5500 6450
Wire Wire Line
	10300 8500 9350 8500
Wire Wire Line
	3950 3850 3950 3800
Wire Wire Line
	3950 3800 3550 3800
Wire Wire Line
	3550 3800 3550 5000
Wire Wire Line
	3550 5000 4450 5000
Wire Wire Line
	3750 4150 3700 4150
Wire Wire Line
	3700 4250 3700 4150
$Comp
L Device:R R15
U 1 1 625D32B9
P 4950 4500
F 0 "R15" H 4881 4454 50  0000 R CNN
F 1 "20k" H 4881 4545 50  0000 R CNN
F 2 "" V 4880 4500 50  0001 C CNN
F 3 "~" H 4950 4500 50  0001 C CNN
	1    4950 4500
	1    0    0    1   
$EndComp
Connection ~ 4950 3700
Wire Wire Line
	4950 3700 4950 4250
Wire Wire Line
	4450 5000 4450 4700
$Comp
L Device:R R17
U 1 1 627E8280
P 10000 4850
F 0 "R17" V 9900 4850 50  0000 C CNN
F 1 "20k" V 10000 4850 50  0000 C CNN
F 2 "" V 9930 4850 50  0001 C CNN
F 3 "~" H 10000 4850 50  0001 C CNN
	1    10000 4850
	0    1    -1   0   
$EndComp
Connection ~ 4450 5000
Connection ~ 6900 7000
Wire Wire Line
	6900 7000 7700 7000
Wire Wire Line
	3050 3400 3800 3400
Wire Wire Line
	3950 3700 3950 3550
Wire Wire Line
	4150 5900 3050 5900
Wire Wire Line
	3050 6450 3000 6450
Connection ~ 3050 6450
Wire Wire Line
	5900 6750 4350 6750
Wire Wire Line
	4350 6750 4350 6300
Connection ~ 5900 6750
Wire Wire Line
	3050 5850 3050 5900
Connection ~ 3050 5900
Wire Wire Line
	3050 5900 3050 6000
Connection ~ 6150 3250
$Comp
L CRC_Lamps:EZ80 L05
U 2 1 62D6BEA8
P 1900 10550
F 0 "L05" H 1850 10950 50  0000 L CNN
F 1 "EZ80" H 1800 10850 50  0000 L CNN
F 2 "" H 1900 10600 50  0001 C CNN
F 3 "" H 1900 10600 50  0001 C CNN
	2    1900 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 10650 1800 10900
Connection ~ 1800 10900
Wire Wire Line
	1800 10900 2250 10900
Wire Wire Line
	2000 10650 2000 11100
Connection ~ 2000 11100
Wire Wire Line
	2000 11100 2450 11100
Text GLabel 3350 2650 2    50   Input ~ 0
L5-1
Text GLabel 3350 2250 2    50   Input ~ 0
L5-7
Wire Wire Line
	3350 2650 3300 2650
Wire Wire Line
	3300 2250 3350 2250
Wire Wire Line
	4450 4700 4950 4700
Connection ~ 4450 4700
Wire Wire Line
	4450 4700 4450 4350
Wire Wire Line
	4450 5000 4450 5500
Wire Wire Line
	8450 4600 8450 4700
$Comp
L CRC_Lamps:12E1 L08
U 1 1 6304C4FD
P 8200 3000
F 0 "L08" V 8250 2900 50  0000 R CNN
F 1 "12E1" V 8350 2900 50  0000 R CNN
F 2 "" H 8200 3000 50  0001 C CNN
F 3 "" H 8200 3000 50  0001 C CNN
	1    8200 3000
	0    -1   1    0   
$EndComp
$Comp
L CRC_Lamps:12E1 L08
U 2 1 6304F43D
P 4550 10500
F 0 "L08" H 4500 10850 50  0000 L CNN
F 1 "12E1" H 4500 10750 50  0000 L CNN
F 2 "" H 4550 10500 50  0001 C CNN
F 3 "" H 4550 10500 50  0001 C CNN
	2    4550 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 10750 10650 10750
Wire Wire Line
	10650 10750 10650 10500
Connection ~ 10050 10750
Wire Wire Line
	10050 10750 10050 10550
$Comp
L Device:CP C15
U 1 1 630A6328
P 10450 10500
F 0 "C15" V 10300 10500 50  0000 C CNN
F 1 "8uF" V 10600 10500 50  0000 C CNN
F 2 "" H 10488 10350 50  0001 C CNN
F 3 "~" H 10450 10500 50  0001 C CNN
	1    10450 10500
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 10500 10300 10500
Wire Wire Line
	10650 10500 10600 10500
Wire Wire Line
	5450 10800 5450 10550
$Comp
L Device:CP C14
U 1 1 6319866C
P 5650 10550
F 0 "C14" V 5395 10550 50  0000 C CNN
F 1 "8uF" V 5486 10550 50  0000 C CNN
F 2 "" H 5688 10400 50  0001 C CNN
F 3 "~" H 5650 10550 50  0001 C CNN
	1    5650 10550
	0    -1   1    0   
$EndComp
Wire Wire Line
	6350 10550 5800 10550
Wire Wire Line
	5450 10550 5500 10550
Wire Wire Line
	5450 10800 5950 10800
Connection ~ 5950 10800
Wire Wire Line
	5950 10800 7750 10800
Connection ~ 6350 10550
Wire Wire Line
	6350 10550 6350 10450
Text GLabel 6050 2950 0    50   Input ~ 0
masse
Wire Wire Line
	6050 2950 6150 2950
Connection ~ 6150 2950
Wire Wire Line
	6150 2950 6150 3050
Connection ~ 6150 3050
Wire Wire Line
	6150 3050 6150 3250
Wire Wire Line
	2300 2200 2400 2200
Text GLabel 10450 9300 2    50   Input ~ 0
masse
Wire Wire Line
	10450 9300 10350 9300
Wire Wire Line
	4950 4700 4950 4650
Connection ~ 4950 4700
Wire Wire Line
	4950 4700 5450 4700
Wire Wire Line
	4950 4250 4950 4350
$Comp
L Device:CP C1
U 1 1 62F87843
P 5600 4700
F 0 "C1" V 5855 4700 50  0000 C CNN
F 1 "8uF" V 5764 4700 50  0000 C CNN
F 2 "" H 5638 4550 50  0001 C CNN
F 3 "~" H 5600 4700 50  0001 C CNN
	1    5600 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 4700 6150 4700
Connection ~ 6150 4700
Wire Wire Line
	6150 4700 6150 3250
$Comp
L Connector:TestPoint TP_Gnd1
U 1 1 6388112B
P 6000 2700
F 0 "TP_Gnd1" V 6050 2650 50  0000 L CNN
F 1 "TestPoint" V 5950 2650 50  0000 L CNN
F 2 "" H 6200 2700 50  0001 C CNN
F 3 "~" H 6200 2700 50  0001 C CNN
	1    6000 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 2700 6150 2700
Connection ~ 6150 2700
Wire Wire Line
	6150 2700 6150 2850
Wire Wire Line
	8750 4250 8450 4250
$Comp
L Device:CP C2
U 1 1 62FD5E42
P 8450 4450
F 0 "C2" H 8568 4496 50  0000 L CNN
F 1 "8uF" H 8568 4405 50  0000 L CNN
F 2 "" H 8488 4300 50  0001 C CNN
F 3 "~" H 8450 4450 50  0001 C CNN
	1    8450 4450
	1    0    0    -1  
$EndComp
Connection ~ 8450 4700
Wire Wire Line
	8450 4250 8450 4300
Connection ~ 8450 4250
Connection ~ 8750 3900
Wire Wire Line
	8750 3900 8750 4250
Wire Wire Line
	9550 750  9550 3900
Wire Wire Line
	6150 4700 8450 4700
Wire Wire Line
	10300 4700 10300 4850
Connection ~ 10300 4700
Wire Wire Line
	10300 4450 10300 4700
Wire Wire Line
	10300 4700 8450 4700
Wire Wire Line
	4950 4700 4950 4850
Wire Wire Line
	4950 4850 9850 4850
Wire Wire Line
	10150 4850 10300 4850
Connection ~ 10300 4850
Wire Wire Line
	10300 4850 10300 8500
Wire Wire Line
	4950 4250 8450 4250
Wire Wire Line
	10100 6500 10100 4950
Wire Wire Line
	10100 4950 8750 4950
Connection ~ 8750 4950
Wire Wire Line
	8750 4950 8750 4250
Wire Wire Line
	8100 7600 8900 7600
Wire Wire Line
	8900 6500 8750 6500
Connection ~ 8750 6500
Connection ~ 8750 7350
Wire Wire Line
	8750 7350 8900 7350
Wire Wire Line
	8750 6500 8750 6850
Connection ~ 8450 7350
Wire Wire Line
	8450 7350 8750 7350
Wire Wire Line
	8100 7350 8450 7350
Wire Wire Line
	8450 6950 8450 6850
Wire Wire Line
	8450 6850 8750 6850
Connection ~ 8750 6850
Wire Wire Line
	8750 6850 8750 6950
Wire Wire Line
	5000 6450 5000 8500
Connection ~ 8900 8100
Wire Wire Line
	5000 5650 5000 6450
Connection ~ 7600 5650
Wire Wire Line
	5900 5650 7600 5650
Wire Wire Line
	5000 5650 5600 5650
$Comp
L Device:R R18
U 1 1 60ACD84B
P 5750 5650
F 0 "R18" V 5957 5650 50  0000 C CNN
F 1 "47R" V 5866 5650 50  0000 C CNN
F 2 "" V 5680 5650 50  0001 C CNN
F 3 "~" H 5750 5650 50  0001 C CNN
	1    5750 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 5650 7600 6300
Text GLabel 9700 5350 2    50   Input ~ 0
L5-1
Text GLabel 9700 5550 2    50   Input ~ 0
L5-7
Wire Wire Line
	9650 5550 9700 5550
Wire Wire Line
	9700 5350 9650 5350
$Comp
L CRC_Lamps:EZ80 L05
U 1 1 62DB7D70
P 9000 5450
F 0 "L05" H 9050 5600 50  0000 R CNN
F 1 "EZ80" H 9100 5700 50  0000 R CNN
F 2 "" H 9000 5500 50  0001 C CNN
F 3 "" H 9000 5500 50  0001 C CNN
	1    9000 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 5000 8750 4950
Wire Wire Line
	8750 5300 8750 5350
Wire Wire Line
	8750 5350 8900 5350
$Comp
L Device:CP C3
U 1 1 634E6B04
P 8750 5150
F 0 "C3" V 8600 5150 50  0000 C CNN
F 1 "32uF" V 8500 5150 50  0000 C CNN
F 2 "" H 8788 5000 50  0001 C CNN
F 3 "~" H 8750 5150 50  0001 C CNN
	1    8750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5350 8750 5850
Connection ~ 8750 5350
$Comp
L Device:R R21
U 1 1 60C269AE
P 8500 5950
F 0 "R21" V 8400 5900 50  0000 L CNN
F 1 "1k" V 8500 5900 50  0000 L CNN
F 2 "" V 8430 5950 50  0001 C CNN
F 3 "~" H 8500 5950 50  0001 C CNN
	1    8500 5950
	0    1    -1   0   
$EndComp
Wire Wire Line
	8350 5850 8250 5850
Wire Wire Line
	7600 5650 7650 5650
Wire Wire Line
	7600 6300 8050 6300
Wire Wire Line
	8750 5850 8650 5850
Wire Wire Line
	7950 5350 8750 5350
Wire Wire Line
	7950 5400 7950 5350
NoConn ~ 7650 5750
$Comp
L Device:R R19
U 1 1 60BC280E
P 8500 5850
F 0 "R19" V 8400 5800 50  0000 L CNN
F 1 "30k" V 8500 5750 50  0000 L CNN
F 2 "" V 8430 5850 50  0001 C CNN
F 3 "~" H 8500 5850 50  0001 C CNN
	1    8500 5850
	0    -1   1    0   
$EndComp
Wire Wire Line
	8250 5950 8350 5950
Wire Wire Line
	8050 6250 8050 6300
$Comp
L CRC_Lamps:EL81 L06
U 1 1 60789540
P 7950 5950
F 0 "L06" H 8250 5800 50  0000 R CNN
F 1 "EL81" H 8250 5700 50  0000 R CNN
F 2 "" H 7950 5950 50  0001 C CNN
F 3 "" H 7950 5950 50  0001 C CNN
	1    7950 5950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8650 5950 9400 5950
Wire Wire Line
	9400 5950 9400 6100
$Comp
L Device:R R22
U 1 1 60C359C3
P 9400 6250
F 0 "R22" V 9300 6200 50  0000 L CNN
F 1 "500K" V 9400 6150 50  0000 L CNN
F 2 "" V 9330 6250 50  0001 C CNN
F 3 "~" H 9400 6250 50  0001 C CNN
	1    9400 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 6400 9400 6500
Wire Wire Line
	9200 6500 9400 6500
Connection ~ 9400 5950
Wire Wire Line
	9400 5950 9800 5950
Connection ~ 9400 6500
Wire Wire Line
	9400 6500 10100 6500
Connection ~ 8900 7600
Wire Wire Line
	5500 7150 5500 7600
Wire Wire Line
	5500 6450 5500 7150
Wire Wire Line
	8900 7600 8900 8100
Wire Wire Line
	7700 7000 7700 7350
Wire Wire Line
	9200 7350 9250 7350
Wire Wire Line
	8950 7600 8900 7600
Wire Wire Line
	9800 7700 9750 7700
Wire Wire Line
	9450 8100 9450 8000
Wire Wire Line
	8900 8100 9450 8100
Wire Wire Line
	9350 8000 9350 8300
Connection ~ 9350 8500
Wire Wire Line
	9800 5950 9800 7700
$Comp
L Device:R R30
U 1 1 64FA682D
P 9100 8300
F 0 "R30" V 9000 8250 50  0000 L CNN
F 1 "10k" V 9100 8250 50  0000 L CNN
F 2 "" V 9030 8300 50  0001 C CNN
F 3 "~" H 9100 8300 50  0001 C CNN
	1    9100 8300
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 8300 9250 8300
Connection ~ 9350 8300
Wire Wire Line
	9350 8300 9350 8500
Wire Wire Line
	8950 8300 8900 8300
Wire Wire Line
	8900 8300 8900 8100
Wire Wire Line
	5000 8500 9350 8500
$Comp
L CRC_Lamps:ECC83 L02
U 1 1 6072F967
P 6450 6500
F 0 "L02" H 6350 6650 50  0000 L CNN
F 1 "ECC83" H 6350 6550 50  0000 L CNN
F 2 "Valve:Valve_Noval_P" H 6720 6100 50  0001 C CNN
F 3 "http://www.r-type.org/pdfs/ecc83.pdf" H 6450 6500 50  0001 C CNN
	1    6450 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 6400 5900 6400
Wire Wire Line
	5900 6400 5900 6750
Text Notes 12200 4050 0    98   ~ 0
L01\n
Text Notes 12900 4200 0    98   ~ 0
L02\n\n
Text Notes 13600 4200 0    98   ~ 0
L03\n\n
Text Notes 14300 4200 0    98   ~ 0
L04\n\n
Text Notes 11950 5500 0    787  ~ 0
ooooo\nooOO
Text Notes 15000 4200 0    98   ~ 0
L05\n\n
Text Notes 12200 5250 0    98   ~ 0
L06\n
Text Notes 12900 5250 0    98   ~ 0
L07\n
Text Notes 13650 5100 0    98   ~ 0
L08\n
Text Notes 14450 5250 0    98   ~ 0
L09\n\n
Text Notes 12100 3350 0    394  ~ 0
ooOOOOO
Text Notes 12200 2850 0    98   ~ 0
C1
Text Notes 12550 2850 0    98   ~ 0
C2
Text Notes 12900 2850 0    98   ~ 0
C3
Text Notes 13300 2850 0    98   ~ 0
C4
Text Notes 13750 2850 0    98   ~ 0
C5
Text Notes 14150 2850 0    98   ~ 0
C6
Text Notes 14550 2850 0    98   ~ 0
C7
Wire Notes Line style solid
	11950 5950 13450 5950
Wire Notes Line style solid
	13450 7450 13450 5950
Wire Notes Line style solid
	13450 7450 11950 7450
Wire Notes Line style solid
	11950 5950 11950 7450
Wire Notes Line style solid
	13800 5950 15300 5950
Wire Notes Line style solid
	15300 7450 15300 5950
Wire Notes Line style solid
	15300 7450 13800 7450
Wire Notes Line style solid
	13800 5950 13800 7450
Text Notes 12250 7000 0    591  ~ 0
T1
Text Notes 14050 7000 0    591  ~ 0
T2
Wire Notes Line
	11750 1850 15500 1850
Wire Notes Line
	15500 1850 15500 7650
Wire Notes Line
	15500 7650 11750 7650
Wire Notes Line
	11750 7650 11750 1850
Wire Notes Line
	15500 2550 11750 2550
Text Notes 13050 2000 0    98   ~ 0
Face Avant
Text Notes 13050 7600 0    98   ~ 0
Face Arriere
Text Notes 13000 2500 0    98   ~ 0
Vue de dessus
Text Notes 11950 4850 0    98   ~ 0
o
Text Notes 12050 4750 0    49   ~ 0
ANODE L06
Text Notes 13350 5250 0    98   ~ 0
o
Text Notes 13450 5100 1    49   ~ 0
ANODE L08
Text Notes 10250 10050 0    49   ~ 0
connecteurs vus de l'avant de l'ALS
$Comp
L Device:R R31
U 1 1 6549C014
P 7400 2700
F 0 "R31" V 7300 2700 50  0000 C CNN
F 1 "27R" V 7400 2700 50  0000 C CNN
F 2 "" V 7330 2700 50  0001 C CNN
F 3 "~" H 7400 2700 50  0001 C CNN
	1    7400 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 2450 7400 2550
Connection ~ 7400 2450
Wire Wire Line
	7400 2850 7400 3000
Wire Wire Line
	4200 10650 4200 11100
Wire Wire Line
	4000 10650 4000 10900
$EndSCHEMATC
