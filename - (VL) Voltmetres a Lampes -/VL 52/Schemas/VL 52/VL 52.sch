EESchema Schematic File Version 4
EELAYER 30 0
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
L CRC_Transformers:TA_8095 T1
U 1 1 61D74701
P 2500 7200
F 0 "T1" H 2768 7248 50  0000 L CNN
F 1 "TA8095" H 2768 7157 50  0000 L CNN
F 2 "" H 2500 7300 50  0001 C CNN
F 3 "" H 2500 7300 50  0001 C CNN
	1    2500 7200
	1    0    0    -1  
$EndComp
$Comp
L CRC_Transformers:TA_8095 T1
U 2 1 61D76DC5
P 2600 6350
F 0 "T1" V 2750 6900 50  0000 R CNN
F 1 "TA8095" V 2650 7000 50  0000 R CNN
F 2 "" H 2600 6450 50  0001 C CNN
F 3 "" H 2600 6450 50  0001 C CNN
	2    2600 6350
	0    -1   -1   0   
$EndComp
$Comp
L CRC_Transformers:TA_8095 T1
U 4 1 61D786E4
P 4300 7500
F 0 "T1" H 4400 7875 50  0000 C CNN
F 1 "TA8095" H 4400 7784 50  0000 C CNN
F 2 "" H 4300 7600 50  0001 C CNN
F 3 "" H 4300 7600 50  0001 C CNN
	4    4300 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61D7AADB
P 2850 5000
F 0 "R?" V 2950 4950 50  0000 L CNN
F 1 "6K" V 2850 4950 50  0000 L CNN
F 2 "" V 2780 5000 50  0001 C CNN
F 3 "~" H 2850 5000 50  0001 C CNN
	1    2850 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 61D7AECA
P 3900 5700
F 0 "R?" V 4000 5650 50  0000 L CNN
F 1 "35K" V 3900 5650 50  0000 L CNN
F 2 "" V 3830 5700 50  0001 C CNN
F 3 "~" H 3900 5700 50  0001 C CNN
	1    3900 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61D7B7CA
P 3900 5200
F 0 "R?" V 4000 5150 50  0000 L CNN
F 1 "50K" V 3900 5150 50  0000 L CNN
F 2 "" V 3830 5200 50  0001 C CNN
F 3 "~" H 3900 5200 50  0001 C CNN
	1    3900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5550 3900 5450
Wire Wire Line
	2600 5600 2600 5900
Wire Wire Line
	3900 5900 3900 5850
Wire Wire Line
	3100 5900 3100 5600
$Comp
L Device:C C?
U 1 1 61D7E30C
P 3100 5450
F 0 "C?" H 3150 5550 50  0000 L CNN
F 1 "50nF" H 3150 5350 50  0000 L CNN
F 2 "" H 3138 5300 50  0001 C CNN
F 3 "~" H 3100 5450 50  0001 C CNN
	1    3100 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 61D7EBFD
P 2600 5450
F 0 "C?" H 2650 5550 50  0000 L CNN
F 1 "8uF" H 2650 5350 50  0000 L CNN
F 2 "" H 2638 5300 50  0001 C CNN
F 3 "~" H 2600 5450 50  0001 C CNN
	1    2600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5050 3900 5000
Wire Wire Line
	3100 5000 3100 5300
Connection ~ 2600 5900
Wire Wire Line
	2600 5900 2600 6150
$Comp
L Device:R R?
U 1 1 61D9796B
P 6100 5850
F 0 "R?" V 6000 5800 50  0000 L CNN
F 1 "35K" V 6100 5800 50  0000 L CNN
F 2 "" V 6030 5850 50  0001 C CNN
F 3 "~" H 6100 5850 50  0001 C CNN
	1    6100 5850
	0    1    1    0   
$EndComp
$Comp
L Device:Galvanometer M1
U 1 1 61DA0F7F
P 5800 5250
F 0 "M1" V 5800 5250 50  0000 C CNN
F 1 "Galvanometer" V 5950 5250 50  0000 C CNN
F 2 "" V 5800 5350 50  0001 C CNN
F 3 "~" V 5800 5350 50  0001 C CNN
	1    5800 5250
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 61DAF006
P 5400 4200
F 0 "R?" V 5300 4150 50  0000 L CNN
F 1 "3M" V 5400 4150 50  0000 L CNN
F 2 "" V 5330 4200 50  0001 C CNN
F 3 "~" H 5400 4200 50  0001 C CNN
	1    5400 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61DAF45C
P 6200 4200
F 0 "R?" V 6300 4150 50  0000 L CNN
F 1 "3M" V 6200 4150 50  0000 L CNN
F 2 "" V 6130 4200 50  0001 C CNN
F 3 "~" H 6200 4200 50  0001 C CNN
	1    6200 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61DAF8E3
P 5550 4200
F 0 "C?" H 5600 4300 50  0000 L CNN
F 1 "1uF" H 5600 4100 50  0000 L CNN
F 2 "" H 5588 4050 50  0001 C CNN
F 3 "~" H 5550 4200 50  0001 C CNN
	1    5550 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61DB0823
P 6050 4200
F 0 "C?" H 6150 4300 50  0000 R CNN
F 1 "1uF" H 6200 4100 50  0000 R CNN
F 2 "" H 6088 4050 50  0001 C CNN
F 3 "~" H 6050 4200 50  0001 C CNN
	1    6050 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 4050 5400 4000
Wire Wire Line
	5550 4000 5550 4050
Wire Wire Line
	6050 4050 6050 4000
Wire Wire Line
	6050 4000 6200 4000
Wire Wire Line
	6200 4000 6200 4050
Wire Wire Line
	5550 4350 5550 4400
Wire Wire Line
	6050 4350 6050 4400
Wire Wire Line
	6050 4400 5800 4400
Connection ~ 5800 4400
Wire Wire Line
	5800 4400 5550 4400
Wire Wire Line
	5400 4350 5400 4450
Wire Wire Line
	6200 4350 6200 4450
$Comp
L CRC_Misc_Components:coax coax1
U 1 1 61DC3270
P 5400 4650
F 0 "coax1" V 5434 4888 50  0000 L CNN
F 1 "coax" V 5343 4888 50  0000 L CNN
F 2 "" H 5400 4650 50  0001 C CNN
F 3 "" H 5400 4650 50  0001 C CNN
	1    5400 4650
	0    1    -1   0   
$EndComp
Wire Wire Line
	5550 4450 5550 4400
Connection ~ 5550 4400
$Comp
L CRC_Misc_Components:coax coax2
U 1 1 61DC5ABB
P 6200 4650
F 0 "coax2" V 6234 4522 50  0000 R CNN
F 1 "coax" V 6143 4522 50  0000 R CNN
F 2 "" H 6200 4650 50  0001 C CNN
F 3 "" H 6200 4650 50  0001 C CNN
	1    6200 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 4450 6050 4400
Connection ~ 6050 4400
$Comp
L CRC_Misc_Components:coax coax2
U 2 1 61DC951C
P 7300 3550
F 0 "coax2" V 7000 3450 50  0000 L CNN
F 1 "coax" V 7150 3450 50  0000 L CNN
F 2 "" H 7300 3550 50  0001 C CNN
F 3 "" H 7300 3550 50  0001 C CNN
	2    7300 3550
	0    -1   1    0   
$EndComp
$Comp
L CRC_Lamps:6x4 V1
U 1 1 61DDC619
P 1700 5500
F 0 "V1" H 1800 5300 50  0000 R CNN
F 1 "6x4" H 1800 5550 50  0000 R CNN
F 2 "" H 1700 5500 50  0001 C CNN
F 3 "" H 1700 5500 50  0001 C CNN
	1    1700 5500
	-1   0    0    1   
$EndComp
$Comp
L CRC_Lamps:6x4 V1
U 2 1 61DDD80D
P 4750 6900
F 0 "V1" H 4522 6913 50  0000 R CNN
F 1 "6x4" H 4522 6822 50  0000 R CNN
F 2 "" H 4750 6900 50  0001 C CNN
F 3 "" H 4750 6900 50  0001 C CNN
	2    4750 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 7300 4650 7350
Wire Wire Line
	4650 7350 4500 7350
Wire Wire Line
	4500 7650 4850 7650
Wire Wire Line
	4850 7650 4850 7300
Wire Wire Line
	1800 6050 2300 6050
Wire Wire Line
	2300 6050 2300 6150
Wire Wire Line
	2900 6150 2900 6100
Wire Wire Line
	2900 6100 1600 6100
Wire Wire Line
	1600 6100 1600 5900
Wire Wire Line
	2700 5000 2600 5000
Wire Wire Line
	3900 5450 3900 5350
Connection ~ 3900 5450
$Comp
L CRC_Lamps:R242N V6
U 1 1 61E8FDE5
P 5200 2000
F 0 "V6" H 5428 2071 50  0000 L CNN
F 1 "R242N" H 5428 1980 50  0000 L CNN
F 2 "" H 5200 2000 50  0001 C CNN
F 3 "" H 5200 2000 50  0001 C CNN
	1    5200 2000
	1    0    0    -1  
$EndComp
$Comp
L CRC_Lamps:R242N V7
U 1 1 61E90656
P 8000 2000
F 0 "V7" H 8228 2071 50  0000 L CNN
F 1 "R242N" H 8228 1980 50  0000 L CNN
F 2 "" H 8000 2000 50  0001 C CNN
F 3 "" H 8000 2000 50  0001 C CNN
	1    8000 2000
	-1   0    0    -1  
$EndComp
$Comp
L CRC_Lamps:6AU6N V5
U 1 1 61E91D0C
P 6400 3600
F 0 "V5" H 6100 3800 50  0000 C CNN
F 1 "6AU6N" H 6050 3700 50  0000 C CNN
F 2 "" H 6400 3600 50  0001 C CNN
F 3 "" H 6400 3600 50  0001 C CNN
	1    6400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2450 8150 2350
Wire Wire Line
	5050 2350 5050 2450
Wire Wire Line
	5200 1600 5200 1550
Wire Wire Line
	5200 1550 4850 1550
Wire Wire Line
	4850 1550 4850 2000
Wire Wire Line
	4850 2000 4900 2000
Wire Wire Line
	8300 2000 8350 2000
Wire Wire Line
	8350 2000 8350 1550
Wire Wire Line
	8350 1550 8000 1550
Wire Wire Line
	8000 1550 8000 1600
$Comp
L Device:C C?
U 1 1 61F00295
P 4850 2250
F 0 "C?" H 4736 2204 50  0000 R CNN
F 1 "900pF" H 4736 2295 50  0000 R CNN
F 2 "" H 4888 2100 50  0001 C CNN
F 3 "~" H 4850 2250 50  0001 C CNN
	1    4850 2250
	1    0    0    1   
$EndComp
Wire Wire Line
	4850 2100 4850 2000
Connection ~ 4850 2000
Wire Wire Line
	4850 2400 4850 2450
$Comp
L Device:C C?
U 1 1 61F0A12B
P 8700 1300
F 0 "C?" H 8586 1254 50  0000 R CNN
F 1 "50nF" H 8586 1345 50  0000 R CNN
F 2 "" H 8738 1150 50  0001 C CNN
F 3 "~" H 8700 1300 50  0001 C CNN
	1    8700 1300
	-1   0    0    1   
$EndComp
Connection ~ 8000 1550
Wire Wire Line
	8700 1050 8700 1150
$Comp
L Connector:TestPoint TP3
U 1 1 61F14D3A
P 8700 1050
F 0 "TP3" H 8758 1168 50  0000 L CNN
F 1 "FP3" H 8758 1077 50  0000 L CNN
F 2 "" H 8900 1050 50  0001 C CNN
F 3 "~" H 8900 1050 50  0001 C CNN
	1    8700 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61F7C97B
P 5450 1550
F 0 "R?" V 5350 1500 50  0000 L CNN
F 1 "3M" V 5450 1500 50  0000 L CNN
F 2 "" V 5380 1550 50  0001 C CNN
F 3 "~" H 5450 1550 50  0001 C CNN
	1    5450 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 1550 5200 1550
Wire Wire Line
	6700 3550 6750 3550
Wire Wire Line
	6750 3550 6750 3100
Wire Wire Line
	6750 3100 6400 3100
Wire Wire Line
	6400 3100 6400 3150
Wire Wire Line
	6300 3950 6300 4000
Wire Wire Line
	6300 4000 6500 4000
Wire Wire Line
	6800 4000 6800 3450
Wire Wire Line
	6800 3450 6700 3450
Wire Wire Line
	5400 4000 5550 4000
Wire Wire Line
	5550 3650 5550 4000
Connection ~ 5550 4000
Wire Wire Line
	5800 2800 5800 4400
Wire Wire Line
	6050 4000 6050 3650
Wire Wire Line
	6050 3650 6100 3650
$Comp
L Device:R R?
U 1 1 62070105
P 7750 1550
F 0 "R?" V 7650 1550 50  0000 C CNN
F 1 "200K" V 7750 1550 50  0000 C CNN
F 2 "" V 7680 1550 50  0001 C CNN
F 3 "~" H 7750 1550 50  0001 C CNN
	1    7750 1550
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62070766
P 7350 1550
F 0 "R?" V 7250 1550 50  0000 C CNN
F 1 "3.5K" V 7350 1550 50  0000 C CNN
F 2 "" V 7280 1550 50  0001 C CNN
F 3 "~" H 7350 1550 50  0001 C CNN
	1    7350 1550
	0    -1   1    0   
$EndComp
Wire Wire Line
	7500 1550 7600 1550
Wire Wire Line
	7900 1550 8000 1550
$Comp
L Switch:SW_DPST_x2 SW2
U 1 1 6207EFFE
P 6900 1550
F 0 "SW2" H 6900 1785 50  0000 C CNN
F 1 "SW_DPST_x2" H 6900 1694 50  0001 C CNN
F 2 "" H 6900 1550 50  0001 C CNN
F 3 "~" H 6900 1550 50  0001 C CNN
	1    6900 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7100 1550 7200 1550
Wire Wire Line
	6650 1050 6650 1550
$Comp
L Connector:TestPoint TP6
U 1 1 6208DAA8
P 6650 1050
F 0 "TP6" H 6592 1076 50  0000 R CNN
F 1 "FP6" H 6592 1167 50  0000 R CNN
F 2 "" H 6850 1050 50  0001 C CNN
F 3 "~" H 6850 1050 50  0001 C CNN
	1    6650 1050
	-1   0    0    -1  
$EndComp
$Comp
L CRC_Misc_Components:coax coax3
U 1 1 62094831
P 6650 1800
F 0 "coax3" V 6400 1900 50  0000 R CNN
F 1 "coax" V 6593 1672 50  0001 R CNN
F 2 "" H 6650 1800 50  0001 C CNN
F 3 "" H 6650 1800 50  0001 C CNN
	1    6650 1800
	0    -1   -1   0   
$EndComp
$Comp
L CRC_Misc_Components:coax coax3
U 2 1 620A1D2D
P 7600 3550
F 0 "coax3" V 7300 3450 50  0000 L CNN
F 1 "coax" V 7450 3450 50  0000 L CNN
F 2 "" H 7600 3550 50  0001 C CNN
F 3 "" H 7600 3550 50  0001 C CNN
	2    7600 3550
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 620E2287
P 6400 1050
F 0 "TP5" H 6458 1168 50  0000 L CNN
F 1 "FP5" H 6458 1077 50  0000 L CNN
F 2 "" H 6600 1050 50  0001 C CNN
F 3 "~" H 6600 1050 50  0001 C CNN
	1    6400 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 620EF9B1
P 9200 1300
F 0 "C?" H 9085 1346 50  0000 R CNN
F 1 "0.5uF" H 9085 1255 50  0000 R CNN
F 2 "" H 9238 1150 50  0001 C CNN
F 3 "~" H 9200 1300 50  0001 C CNN
	1    9200 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2100 5900 2600 5900
$Comp
L CRC_Lamps:OA2 V3
U 1 1 61DDB7B5
P 3550 5450
F 0 "V3" H 3600 5400 50  0000 R CNN
F 1 "OA2" H 3600 5500 50  0000 R CNN
F 2 "" H 3550 5450 50  0001 C CNN
F 3 "" H 3550 5450 50  0001 C CNN
	1    3550 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 5850 3550 5900
Wire Wire Line
	3550 5050 3550 5000
Wire Wire Line
	2100 5300 2100 5000
$Comp
L Device:CP C?
U 1 1 61D80904
P 2100 5450
F 0 "C?" H 2150 5550 50  0000 L CNN
F 1 "8uF" H 2150 5350 50  0000 L CNN
F 2 "" H 2138 5300 50  0001 C CNN
F 3 "~" H 2100 5450 50  0001 C CNN
	1    2100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5900 2100 5600
Connection ~ 2600 5000
Wire Wire Line
	2200 5000 2100 5000
Connection ~ 2100 5000
Wire Wire Line
	2600 5000 2600 5300
Wire Wire Line
	2500 5000 2600 5000
$Comp
L Device:R R?
U 1 1 61D79D71
P 2350 5000
F 0 "R?" V 2450 4950 50  0000 L CNN
F 1 "3K" V 2350 4950 50  0000 L CNN
F 2 "" V 2280 5000 50  0001 C CNN
F 3 "~" H 2350 5000 50  0001 C CNN
	1    2350 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 622E0D8D
P 5650 1150
F 0 "R?" V 5550 1100 50  0000 L CNN
F 1 "1.5M" V 5650 1050 50  0000 L CNN
F 2 "" V 5580 1150 50  0001 C CNN
F 3 "~" H 5650 1150 50  0001 C CNN
	1    5650 1150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPST_x2 SW2
U 2 1 622E1B04
P 5900 1550
F 0 "SW2" H 5900 1785 50  0000 C CNN
F 1 "SW_DPST_x2" H 5900 1694 50  0001 C CNN
F 2 "" H 5900 1550 50  0001 C CNN
F 3 "~" H 5900 1550 50  0001 C CNN
	2    5900 1550
	1    0    0    -1  
$EndComp
$Comp
L CRC_Misc_Components:coax coax4
U 1 1 622EA74B
P 6150 1800
F 0 "coax4" V 5900 1700 50  0000 L CNN
F 1 "coax" V 6093 2038 50  0001 L CNN
F 2 "" H 6150 1800 50  0001 C CNN
F 3 "" H 6150 1800 50  0001 C CNN
	1    6150 1800
	0    1    -1   0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 622FB396
P 6150 1050
F 0 "TP4" H 6208 1168 50  0000 L CNN
F 1 "FP4" H 6208 1077 50  0000 L CNN
F 2 "" H 6350 1050 50  0001 C CNN
F 3 "~" H 6350 1050 50  0001 C CNN
	1    6150 1050
	1    0    0    -1  
$EndComp
$Comp
L CRC_Misc_Components:coax coax4
U 2 1 6231AC87
P 10300 3550
F 0 "coax4" V 10000 3450 50  0000 L CNN
F 1 "coax" V 10150 3450 50  0000 L CNN
F 2 "" H 10300 3550 50  0001 C CNN
F 3 "" H 10300 3550 50  0001 C CNN
	2    10300 3550
	0    -1   1    0   
$EndComp
Wire Wire Line
	1800 5900 1800 6050
Wire Wire Line
	1800 5100 1800 5000
Wire Wire Line
	1800 5000 2100 5000
Connection ~ 5800 2800
Wire Wire Line
	5650 1000 5650 900 
Text Notes 5650 900  0    50   ~ 0
?
Wire Wire Line
	6650 1600 6650 1550
Wire Wire Line
	6500 1600 6500 1550
Wire Wire Line
	6500 1550 6400 1550
Wire Wire Line
	6300 1550 6300 1600
Connection ~ 6400 1550
Wire Wire Line
	6400 1550 6300 1550
Wire Wire Line
	8700 2000 8350 2000
Wire Wire Line
	8700 1450 8700 2000
Connection ~ 8350 2000
$Comp
L Connector:TestPoint TP2
U 1 1 625A46EC
P 8950 1050
F 0 "TP2" H 9008 1168 50  0000 L CNN
F 1 "FP2" H 9008 1077 50  0000 L CNN
F 2 "" H 9150 1050 50  0001 C CNN
F 3 "~" H 9150 1050 50  0001 C CNN
	1    8950 1050
	1    0    0    -1  
$EndComp
Connection ~ 5200 1550
Wire Wire Line
	5600 1550 5650 1550
Wire Wire Line
	6100 1550 6150 1550
Connection ~ 6150 1550
Wire Wire Line
	6150 1550 6150 1600
Connection ~ 5650 1550
Wire Wire Line
	5650 1550 5700 1550
Wire Wire Line
	5650 1300 5650 1550
$Comp
L VL52:K K1
U 1 1 6268F38A
P 7550 5200
F 0 "K1" H 7858 5389 50  0000 L CNN
F 1 "K" H 7858 5298 50  0000 L CNN
F 2 "" H 7550 6650 50  0001 C CNN
F 3 "" H 7550 6650 50  0001 C CNN
	1    7550 5200
	-1   0    0    -1  
$EndComp
$Comp
L VL52:K K1
U 2 1 626912F9
P 8450 5200
F 0 "K1" H 8758 5389 50  0000 L CNN
F 1 "K" H 8758 5298 50  0000 L CNN
F 2 "" H 8450 6650 50  0001 C CNN
F 3 "" H 8450 6650 50  0001 C CNN
	2    8450 5200
	1    0    0    -1  
$EndComp
$Comp
L VL52:K K1
U 3 1 62691DBF
P 9450 5200
F 0 "K1" H 9758 5389 50  0000 L CNN
F 1 "K" H 9758 5298 50  0000 L CNN
F 2 "" H 9450 6650 50  0001 C CNN
F 3 "" H 9450 6650 50  0001 C CNN
	3    9450 5200
	-1   0    0    -1  
$EndComp
$Comp
L VL52:K K1
U 4 1 6269299F
P 10350 5200
F 0 "K1" H 10658 5389 50  0000 L CNN
F 1 "K" H 10658 5298 50  0000 L CNN
F 2 "" H 10350 6650 50  0001 C CNN
F 3 "" H 10350 6650 50  0001 C CNN
	4    10350 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 626B108C
P 8000 4100
F 0 "R?" V 7900 4100 50  0000 C CNN
F 1 "150K" V 8000 4100 50  0000 C CNN
F 2 "" V 7930 4100 50  0001 C CNN
F 3 "~" H 8000 4100 50  0001 C CNN
	1    8000 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 626EC685
P 7800 4300
F 0 "R?" V 7700 4300 50  0000 C CNN
F 1 "2M" V 7800 4300 50  0000 C CNN
F 2 "" V 7730 4300 50  0001 C CNN
F 3 "~" H 7800 4300 50  0001 C CNN
	1    7800 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 626EC68B
P 8200 4400
F 0 "R?" V 8100 4400 50  0000 C CNN
F 1 "50K" V 8200 4400 50  0000 C CNN
F 2 "" V 8130 4400 50  0001 C CNN
F 3 "~" H 8200 4400 50  0001 C CNN
	1    8200 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 626F3E6C
P 7800 4500
F 0 "R?" V 7700 4500 50  0000 C CNN
F 1 "700K" V 7800 4500 50  0000 C CNN
F 2 "" V 7730 4500 50  0001 C CNN
F 3 "~" H 7800 4500 50  0001 C CNN
	1    7800 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 626F3E72
P 8200 4600
F 0 "R?" V 8100 4600 50  0000 C CNN
F 1 "8K" V 8200 4600 50  0000 C CNN
F 2 "" V 8130 4600 50  0001 C CNN
F 3 "~" H 8200 4600 50  0001 C CNN
	1    8200 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 626FB865
P 7800 4700
F 0 "R?" V 7700 4700 50  0000 C CNN
F 1 "200K" V 7800 4700 50  0000 C CNN
F 2 "" V 7730 4700 50  0001 C CNN
F 3 "~" H 7800 4700 50  0001 C CNN
	1    7800 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 626FB86B
P 8200 4800
F 0 "R?" V 8100 4800 50  0000 C CNN
F 1 "3K" V 8200 4800 50  0000 C CNN
F 2 "" V 8130 4800 50  0001 C CNN
F 3 "~" H 8200 4800 50  0001 C CNN
	1    8200 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6270311E
P 7800 4900
F 0 "R?" V 7700 4900 50  0000 C CNN
F 1 "70K" V 7800 4900 50  0000 C CNN
F 2 "" V 7730 4900 50  0001 C CNN
F 3 "~" H 7800 4900 50  0001 C CNN
	1    7800 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62703124
P 8200 5000
F 0 "R?" V 8100 5000 50  0000 C CNN
F 1 "840R" V 8200 5000 50  0000 C CNN
F 2 "" V 8130 5000 50  0001 C CNN
F 3 "~" H 8200 5000 50  0001 C CNN
	1    8200 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6270A9EB
P 7800 5100
F 0 "R?" V 7700 5100 50  0000 C CNN
F 1 "30K" V 7800 5100 50  0000 C CNN
F 2 "" V 7730 5100 50  0001 C CNN
F 3 "~" H 7800 5100 50  0001 C CNN
	1    7800 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 627124AC
P 8000 6300
F 0 "R?" V 7900 6300 50  0000 C CNN
F 1 "3.5M" V 8000 6300 50  0000 C CNN
F 2 "" V 7930 6300 50  0001 C CNN
F 3 "~" H 8000 6300 50  0001 C CNN
	1    8000 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 4300 7600 4300
Wire Wire Line
	7600 4300 7600 4200
Wire Wire Line
	7600 4200 8750 4200
Wire Wire Line
	8750 4200 8750 6000
Wire Wire Line
	8750 6000 8400 6000
Wire Wire Line
	8400 6000 8400 6100
Wire Wire Line
	8400 6100 8450 6100
Connection ~ 7600 4300
Wire Wire Line
	7600 4300 7650 4300
$Comp
L Device:R R?
U 1 1 627591F5
P 8000 6100
F 0 "R?" V 7900 6100 50  0000 C CNN
F 1 "3.5M" V 8000 6100 50  0000 C CNN
F 2 "" V 7930 6100 50  0001 C CNN
F 3 "~" H 8000 6100 50  0001 C CNN
	1    8000 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 6100 8150 6100
Connection ~ 8400 6100
Wire Wire Line
	7850 6100 7700 6100
Wire Wire Line
	7700 6100 7700 6300
Wire Wire Line
	7700 6300 7850 6300
Wire Wire Line
	8450 6300 8400 6300
Wire Wire Line
	7700 6300 7550 6300
Connection ~ 7700 6300
Wire Wire Line
	7850 4100 7600 4100
Wire Wire Line
	7950 4300 8400 4300
Wire Wire Line
	8400 4300 8400 4400
Wire Wire Line
	8400 4400 8350 4400
Connection ~ 8400 4300
Wire Wire Line
	8400 4300 8450 4300
Wire Wire Line
	8050 4400 7600 4400
Wire Wire Line
	7600 4400 7600 4500
Wire Wire Line
	7600 4500 7550 4500
Wire Wire Line
	7600 4500 7650 4500
Connection ~ 7600 4500
Wire Wire Line
	7950 4500 8400 4500
Wire Wire Line
	7550 4700 7600 4700
Wire Wire Line
	7950 4700 8400 4700
Wire Wire Line
	8400 4500 8400 4600
Wire Wire Line
	8400 4600 8350 4600
Connection ~ 8400 4500
Wire Wire Line
	8400 4500 8450 4500
Wire Wire Line
	8050 4600 7600 4600
Wire Wire Line
	7600 4600 7600 4700
Connection ~ 7600 4700
Wire Wire Line
	7600 4700 7650 4700
Wire Wire Line
	8400 4700 8400 4800
Wire Wire Line
	8400 4800 8350 4800
Connection ~ 8400 4700
Wire Wire Line
	8400 4700 8450 4700
Wire Wire Line
	8450 4900 8400 4900
Wire Wire Line
	8400 4900 8400 5000
Wire Wire Line
	8400 5000 8350 5000
Connection ~ 8400 4900
Wire Wire Line
	8400 4900 7950 4900
Wire Wire Line
	8450 5100 8400 5100
Wire Wire Line
	8400 5100 8400 5200
Connection ~ 8400 5100
Wire Wire Line
	8400 5100 7950 5100
$Comp
L Device:R R?
U 1 1 628281EE
P 7800 5300
F 0 "R?" V 7700 5300 50  0000 C CNN
F 1 "400R" V 7800 5300 50  0000 C CNN
F 2 "" V 7730 5300 50  0001 C CNN
F 3 "~" H 7800 5300 50  0001 C CNN
	1    7800 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 5300 7600 5300
Wire Wire Line
	7600 5300 7600 5200
Connection ~ 7600 5300
Wire Wire Line
	7600 5300 7550 5300
Wire Wire Line
	8450 5300 8400 5300
Wire Wire Line
	7650 5100 7600 5100
Wire Wire Line
	7600 5100 7600 5000
Wire Wire Line
	7600 5000 8050 5000
Connection ~ 7600 5100
Wire Wire Line
	7600 5100 7550 5100
Wire Wire Line
	7650 4900 7600 4900
Wire Wire Line
	7600 4900 7600 4800
Wire Wire Line
	7600 4800 8050 4800
Connection ~ 7600 4900
Wire Wire Line
	7600 4900 7550 4900
Wire Wire Line
	7600 5200 8400 5200
Wire Wire Line
	8400 5300 8400 5400
Connection ~ 8400 5300
Wire Wire Line
	8400 5300 7950 5300
Wire Wire Line
	8950 2800 8950 5400
Wire Wire Line
	8950 5400 8400 5400
Wire Wire Line
	9450 5300 9500 5300
Wire Wire Line
	9500 5300 9500 5400
Wire Wire Line
	9500 5400 8950 5400
Connection ~ 8950 5400
Wire Wire Line
	7300 3750 7300 3800
NoConn ~ 7150 3750
Wire Wire Line
	10600 3750 10600 3800
Wire Wire Line
	8800 6200 8400 6200
Wire Wire Line
	8400 6200 8400 6300
Connection ~ 8400 6300
Wire Wire Line
	8400 6300 8150 6300
Wire Wire Line
	8800 6200 8800 4000
Wire Wire Line
	8800 4000 8400 4000
Wire Wire Line
	8400 4000 8400 4100
Wire Wire Line
	8400 4100 8450 4100
Wire Wire Line
	8400 4100 8150 4100
Connection ~ 8400 4100
NoConn ~ 7750 3750
Wire Wire Line
	7600 3750 7600 4100
Connection ~ 7600 4100
Wire Wire Line
	7600 4100 7550 4100
NoConn ~ 10750 3750
$Comp
L CRC_Misc_Components:coax coax1
U 2 1 61DC8A74
P 10600 3550
F 0 "coax1" V 10300 3700 50  0000 R CNN
F 1 "coax" V 10450 3650 50  0000 R CNN
F 2 "" H 10600 3550 50  0001 C CNN
F 3 "" H 10600 3550 50  0001 C CNN
	2    10600 3550
	0    1    1    0   
$EndComp
NoConn ~ 10150 3750
Wire Wire Line
	10300 3750 10300 4100
Wire Wire Line
	10300 4100 10350 4100
$Comp
L Device:R R?
U 1 1 629F01D9
P 10100 4300
F 0 "R?" V 10000 4300 50  0000 C CNN
F 1 "2M" V 10100 4300 50  0000 C CNN
F 2 "" V 10030 4300 50  0001 C CNN
F 3 "~" H 10100 4300 50  0001 C CNN
	1    10100 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 4300 10300 4300
Wire Wire Line
	9950 4300 9500 4300
Wire Wire Line
	9500 4300 9500 4400
Wire Wire Line
	9500 4400 9550 4400
Connection ~ 9500 4300
Wire Wire Line
	9500 4300 9450 4300
$Comp
L Device:R R?
U 1 1 62A5BA00
P 9700 4400
F 0 "R?" V 9600 4400 50  0000 C CNN
F 1 "50K" V 9700 4400 50  0000 C CNN
F 2 "" V 9630 4400 50  0001 C CNN
F 3 "~" H 9700 4400 50  0001 C CNN
	1    9700 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62A5C013
P 10100 4500
F 0 "R?" V 10000 4500 50  0000 C CNN
F 1 "700K" V 10100 4500 50  0000 C CNN
F 2 "" V 10030 4500 50  0001 C CNN
F 3 "~" H 10100 4500 50  0001 C CNN
	1    10100 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62A5C840
P 9700 4600
F 0 "R?" V 9600 4600 50  0000 C CNN
F 1 "10K" V 9700 4600 50  0000 C CNN
F 2 "" V 9630 4600 50  0001 C CNN
F 3 "~" H 9700 4600 50  0001 C CNN
	1    9700 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62A5D00A
P 10100 4700
F 0 "R?" V 10000 4700 50  0000 C CNN
F 1 "200K" V 10100 4700 50  0000 C CNN
F 2 "" V 10030 4700 50  0001 C CNN
F 3 "~" H 10100 4700 50  0001 C CNN
	1    10100 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62A5D8D2
P 10100 4900
F 0 "R?" V 10000 4900 50  0000 C CNN
F 1 "70K" V 10100 4900 50  0000 C CNN
F 2 "" V 10030 4900 50  0001 C CNN
F 3 "~" H 10100 4900 50  0001 C CNN
	1    10100 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62A5DEA8
P 10100 5100
F 0 "R?" V 10000 5100 50  0000 C CNN
F 1 "30K" V 10100 5100 50  0000 C CNN
F 2 "" V 10030 5100 50  0001 C CNN
F 3 "~" H 10100 5100 50  0001 C CNN
	1    10100 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 4900 9500 4900
Wire Wire Line
	9950 4700 9500 4700
Wire Wire Line
	9450 4500 9500 4500
Wire Wire Line
	9500 4500 9500 4600
Wire Wire Line
	9500 4600 9550 4600
Connection ~ 9500 4500
Wire Wire Line
	9500 4500 9950 4500
$Comp
L Device:R R?
U 1 1 62AAB002
P 9700 4800
F 0 "R?" V 9600 4800 50  0000 C CNN
F 1 "2.5K" V 9700 4800 50  0000 C CNN
F 2 "" V 9630 4800 50  0001 C CNN
F 3 "~" H 9700 4800 50  0001 C CNN
	1    9700 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62AAB2BB
P 9700 5000
F 0 "R?" V 9600 5000 50  0000 C CNN
F 1 "1K" V 9700 5000 50  0000 C CNN
F 2 "" V 9630 5000 50  0001 C CNN
F 3 "~" H 9700 5000 50  0001 C CNN
	1    9700 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62AAB564
P 9900 5350
F 0 "R?" V 10000 5350 50  0000 C CNN
F 1 "10K" V 9900 5350 50  0000 C CNN
F 2 "" V 9830 5350 50  0001 C CNN
F 3 "~" H 9900 5350 50  0001 C CNN
	1    9900 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62AABD6D
P 9900 5250
F 0 "R?" V 9800 5250 50  0000 C CNN
F 1 "10K" V 9900 5250 50  0000 C CNN
F 2 "" V 9830 5250 50  0001 C CNN
F 3 "~" H 9900 5250 50  0001 C CNN
	1    9900 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 5100 10300 5100
Wire Wire Line
	9750 5250 9700 5250
Wire Wire Line
	9700 5250 9700 5300
Wire Wire Line
	9700 5350 9750 5350
Wire Wire Line
	9700 5300 9500 5300
Connection ~ 9700 5300
Wire Wire Line
	9700 5300 9700 5350
Connection ~ 9500 5300
Wire Wire Line
	10050 5250 10100 5250
Wire Wire Line
	10100 5250 10100 5300
Wire Wire Line
	10100 5350 10050 5350
Wire Wire Line
	10100 5300 10350 5300
Connection ~ 10100 5300
Wire Wire Line
	10100 5300 10100 5350
Wire Wire Line
	9550 5000 9500 5000
Wire Wire Line
	9500 5000 9500 4900
Connection ~ 9500 4900
Wire Wire Line
	9500 4900 9950 4900
Wire Wire Line
	9450 5100 9950 5100
Wire Wire Line
	9850 5000 10300 5000
Wire Wire Line
	10300 5000 10300 5100
Connection ~ 10300 5100
Wire Wire Line
	10300 5100 10350 5100
Wire Wire Line
	10250 4900 10300 4900
Wire Wire Line
	9850 4800 10300 4800
Wire Wire Line
	10300 4800 10300 4900
Connection ~ 10300 4900
Wire Wire Line
	10300 4900 10350 4900
Wire Wire Line
	9550 4800 9500 4800
Wire Wire Line
	9500 4800 9500 4700
Connection ~ 9500 4700
Wire Wire Line
	9500 4700 9450 4700
Wire Wire Line
	9850 4600 10300 4600
Wire Wire Line
	10300 4600 10300 4700
Wire Wire Line
	10300 4700 10250 4700
Wire Wire Line
	10300 4700 10350 4700
Connection ~ 10300 4700
Wire Wire Line
	10350 4500 10300 4500
Wire Wire Line
	9850 4400 10300 4400
Wire Wire Line
	10300 4400 10300 4500
Connection ~ 10300 4500
Wire Wire Line
	10300 4500 10250 4500
$Comp
L Device:R R?
U 1 1 62BED8A8
P 9900 4100
F 0 "R?" V 9800 4100 50  0000 C CNN
F 1 "100K" V 9900 4100 50  0000 C CNN
F 2 "" V 9830 4100 50  0001 C CNN
F 3 "~" H 9900 4100 50  0001 C CNN
	1    9900 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 4100 9500 4100
Wire Wire Line
	10050 4100 10300 4100
Connection ~ 10300 4100
Wire Wire Line
	9500 4100 9500 4000
Wire Wire Line
	9500 4000 9100 4000
Wire Wire Line
	9100 4000 9100 6200
Wire Wire Line
	9100 6200 9500 6200
Wire Wire Line
	9500 6200 9500 6300
Wire Wire Line
	9500 6300 9450 6300
Connection ~ 9500 4100
Wire Wire Line
	9500 4100 9450 4100
$Comp
L Device:R R?
U 1 1 62C2BB84
P 9900 6300
F 0 "R?" V 9800 6300 50  0000 C CNN
F 1 "3.5M" V 9900 6300 50  0000 C CNN
F 2 "" V 9830 6300 50  0001 C CNN
F 3 "~" H 9900 6300 50  0001 C CNN
	1    9900 6300
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62C2BB8A
P 9900 6100
F 0 "R?" V 9800 6100 50  0000 C CNN
F 1 "3.5M" V 9900 6100 50  0000 C CNN
F 2 "" V 9830 6100 50  0001 C CNN
F 3 "~" H 9900 6100 50  0001 C CNN
	1    9900 6100
	0    -1   1    0   
$EndComp
Wire Wire Line
	10050 6100 10200 6100
Wire Wire Line
	10200 6100 10200 6300
Wire Wire Line
	10200 6300 10050 6300
Wire Wire Line
	10200 6300 10350 6300
Connection ~ 10200 6300
Wire Wire Line
	9500 6300 9750 6300
Wire Wire Line
	9450 6100 9500 6100
Wire Wire Line
	9500 6100 9500 6000
Wire Wire Line
	9500 6000 9150 6000
Wire Wire Line
	9150 6000 9150 4200
Wire Wire Line
	9150 4200 10300 4200
Wire Wire Line
	10300 4200 10300 4300
Connection ~ 9500 6100
Wire Wire Line
	9500 6100 9750 6100
Connection ~ 10300 4300
Wire Wire Line
	10300 4300 10250 4300
$Comp
L Device:R_POT TARAGE
U 1 1 61D65719
P 5800 5850
F 0 "TARAGE" V 5700 6000 50  0000 R CNB
F 1 "RV?" V 5800 5900 50  0000 R CNN
F 2 "" H 5800 5850 50  0001 C CNN
F 3 "~" H 5800 5850 50  0001 C CNN
	1    5800 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 5850 5350 5850
$Comp
L Device:R R?
U 1 1 61D9738B
P 5500 5850
F 0 "R?" V 5400 5800 50  0000 L CNN
F 1 "35K" V 5500 5800 50  0000 L CNN
F 2 "" V 5430 5850 50  0001 C CNN
F 3 "~" H 5500 5850 50  0001 C CNN
	1    5500 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 5250 5600 5250
Connection ~ 5300 5850
$Comp
L Device:R_POT RV?
U 1 1 61D9A73A
P 5300 5250
F 0 "RV?" H 5230 5204 50  0000 R CNN
F 1 "5K" H 5230 5295 50  0000 R CNN
F 2 "" H 5300 5250 50  0001 C CNN
F 3 "~" H 5300 5250 50  0001 C CNN
	1    5300 5250
	1    0    0    1   
$EndComp
Wire Wire Line
	5300 5700 5300 5850
$Comp
L Device:R R?
U 1 1 61D991B4
P 5300 5550
F 0 "R?" V 5200 5500 50  0000 L CNN
F 1 "3K" V 5300 5500 50  0000 L CNN
F 2 "" V 5230 5550 50  0001 C CNN
F 3 "~" H 5300 5550 50  0001 C CNN
	1    5300 5550
	1    0    0    -1  
$EndComp
Connection ~ 9500 6300
$Comp
L CRC_Misc_Components:Select.Secteur J1
U 1 1 630A388D
P 1750 7100
F 0 "J1" H 1750 7475 50  0000 C CNN
F 1 "Select.Secteur" H 1750 7384 50  0000 C CNN
F 2 "" H 1750 7100 50  0001 C CNN
F 3 "" H 1750 7100 50  0001 C CNN
	1    1750 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6950 2050 6950
Wire Wire Line
	2050 6950 2050 6800
Wire Wire Line
	2050 6800 2300 6800
Wire Wire Line
	1950 7050 2100 7050
Wire Wire Line
	2100 7050 2100 7000
Wire Wire Line
	2100 7000 2300 7000
Wire Wire Line
	2100 7150 2100 7200
Wire Wire Line
	2100 7200 2300 7200
Wire Wire Line
	1950 7150 2100 7150
Wire Wire Line
	1950 7250 2050 7250
Wire Wire Line
	2050 7250 2050 7400
Wire Wire Line
	2050 7400 2300 7400
Wire Wire Line
	2300 7600 1450 7600
Wire Wire Line
	1450 7600 1450 7300
Wire Wire Line
	1450 7300 1050 7300
Wire Wire Line
	1550 7100 1450 7100
$Comp
L Device:Fuse F1
U 1 1 631518AF
P 1300 7100
F 0 "F1" V 1103 7100 50  0000 C CNN
F 1 "Fuse" V 1194 7100 50  0000 C CNN
F 2 "" V 1230 7100 50  0001 C CNN
F 3 "~" H 1300 7100 50  0001 C CNN
	1    1300 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 7100 1050 7100
$Comp
L Connector:Conn_WallPlug P1
U 1 1 631A0590
P 850 7200
F 0 "P1" H 867 7525 50  0000 C CNN
F 1 "Conn_WallPlug" H 867 7434 50  0000 C CNN
F 2 "" H 1250 7200 50  0001 C CNN
F 3 "~" H 1250 7200 50  0001 C CNN
	1    850  7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3650 5550 3650
Wire Wire Line
	4800 3450 4800 4000
Wire Wire Line
	5100 4000 5300 4000
Wire Wire Line
	4900 3450 4800 3450
Wire Wire Line
	4850 3550 4900 3550
Wire Wire Line
	4850 3100 4850 3550
$Comp
L CRC_Lamps:6AU6N V4
U 1 1 61E915F8
P 5200 3600
F 0 "V4" H 4900 3800 50  0000 C CNN
F 1 "6AU6N" H 4850 3700 50  0000 C CNN
F 2 "" H 5200 3600 50  0001 C CNN
F 3 "" H 5200 3600 50  0001 C CNN
	1    5200 3600
	-1   0    0    -1  
$EndComp
Connection ~ 6400 3100
Connection ~ 6050 4000
NoConn ~ 5300 5100
Wire Wire Line
	5100 5850 5100 4000
Wire Wire Line
	5100 5850 5300 5850
Connection ~ 5100 4000
Wire Wire Line
	6500 4000 6500 5250
Connection ~ 6500 4000
Wire Wire Line
	6500 4000 6800 4000
Connection ~ 6500 5250
Wire Wire Line
	6000 5250 6500 5250
Wire Wire Line
	6500 5850 6250 5850
Wire Wire Line
	6500 5250 6500 5850
Wire Wire Line
	4800 4000 5100 4000
Connection ~ 4850 3100
Wire Wire Line
	5300 4000 5300 3950
Wire Wire Line
	4850 3100 5200 3100
Wire Wire Line
	5200 3150 5200 3100
Connection ~ 5200 3100
Wire Wire Line
	5200 3100 6400 3100
Wire Notes Line
	1450 4750 4300 4750
Wire Notes Line
	4300 4750 4300 6400
Wire Notes Line
	4300 6400 1450 6400
Wire Notes Line
	1450 6400 1450 4750
Text Notes 3200 6350 0    50   ~ 0
Alimentation stabilisee
$Comp
L CRC_Lamps:6AU6N V5
U 2 1 61E9A977
P 3750 3250
F 0 "V5" H 3700 3300 50  0000 L CNN
F 1 "6AU6N" H 3650 3200 50  0000 L CNN
F 2 "" H 3750 3250 50  0001 C CNN
F 3 "" H 3750 3250 50  0001 C CNN
	2    3750 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 3400 2100 3400
Wire Wire Line
	2100 2800 2100 3400
Wire Wire Line
	2150 2800 2100 2800
$Comp
L CRC_Lamps:R242N V6
U 2 1 61EBDA45
P 3300 2250
F 0 "V6" H 3250 2300 50  0000 L CNN
F 1 "R242N" H 3200 2200 50  0000 L CNN
F 2 "" H 3300 2250 50  0001 C CNN
F 3 "" H 3300 2250 50  0001 C CNN
	2    3300 2250
	1    0    0    -1  
$EndComp
$Comp
L CRC_Lamps:R242N V7
U 2 1 61EBE2AF
P 3750 2250
F 0 "V7" H 3700 2300 50  0000 L CNN
F 1 "R242N" H 3650 2200 50  0000 L CNN
F 2 "" H 3750 2250 50  0001 C CNN
F 3 "" H 3750 2250 50  0001 C CNN
	2    3750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2700 3200 2700
Wire Wire Line
	3200 2700 3200 2650
Wire Wire Line
	3400 2650 3400 2700
Wire Wire Line
	3400 2700 3650 2700
Wire Wire Line
	3650 2700 3650 2650
Wire Wire Line
	3850 2650 3850 2800
Text GLabel 2850 3600 1    50   Input ~ 0
CN1-2
Wire Wire Line
	2850 3700 2850 3600
$Comp
L Connector:TestPoint TP1
U 1 1 620DBA1F
P 9200 1050
F 0 "TP1" H 9258 1168 50  0000 L CNN
F 1 "FP1" H 9258 1077 50  0000 L CNN
F 2 "" H 9400 1050 50  0001 C CNN
F 3 "~" H 9400 1050 50  0001 C CNN
	1    9200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1050 9200 1150
Connection ~ 3850 2800
Wire Wire Line
	3850 2850 3850 2800
Connection ~ 4050 2800
Wire Wire Line
	4050 3700 4050 2800
Wire Wire Line
	3650 2800 3650 2850
Wire Wire Line
	3400 2800 3650 2800
Wire Wire Line
	3400 2850 3400 2800
Wire Wire Line
	2950 2800 3200 2800
Wire Wire Line
	3200 2800 3200 2850
Wire Wire Line
	3850 2800 4050 2800
$Comp
L CRC_Lamps:6AU6N V4
U 2 1 61E92B5F
P 3300 3250
F 0 "V4" H 3250 3300 50  0000 L CNN
F 1 "6AU6N" H 3200 3200 50  0000 L CNN
F 2 "" H 3300 3250 50  0001 C CNN
F 3 "" H 3300 3250 50  0001 C CNN
	2    3300 3250
	1    0    0    1   
$EndComp
Text GLabel 3000 3100 3    50   Input ~ 0
CN1-1
Wire Wire Line
	3000 2900 3000 3100
Wire Wire Line
	2950 2900 3000 2900
$Comp
L CRC_Lamps:3B7 V2
U 1 1 61DD4C03
P 2550 2800
F 0 "V2" V 2185 2800 50  0000 C CNN
F 1 "3B7" V 2276 2800 50  0000 C CNN
F 2 "" H 2550 2800 50  0001 C CNN
F 3 "" H 2550 2800 50  0001 C CNN
	1    2550 2800
	0    1    1    0   
$EndComp
$Comp
L CRC_Transformers:TA_8095 T1
U 3 1 61D779EB
P 1800 3550
F 0 "T1" H 1874 3925 50  0000 C CNN
F 1 "TA8095" H 1874 3834 50  0000 C CNN
F 2 "" H 1800 3650 50  0001 C CNN
F 3 "" H 1800 3650 50  0001 C CNN
	3    1800 3550
	1    0    0    -1  
$EndComp
NoConn ~ 9450 5500
NoConn ~ 9450 5700
NoConn ~ 9450 5900
NoConn ~ 10350 6100
NoConn ~ 10350 5900
NoConn ~ 10350 5700
NoConn ~ 10350 5500
NoConn ~ 8450 5500
NoConn ~ 8450 5700
NoConn ~ 8450 5900
NoConn ~ 7550 5500
NoConn ~ 7550 5700
NoConn ~ 7550 5900
NoConn ~ 7550 6100
Text Notes 4100 5000 0    50   ~ 0
+V
Text Notes 4100 5900 0    50   ~ 0
-V
Wire Wire Line
	4600 5000 4600 3100
Wire Wire Line
	4600 3100 4850 3100
Text Notes 8150 3400 0    50   ~ 0
Positive stack
Text Notes 9200 3400 0    50   ~ 0
Negative stack
Wire Notes Line
	5950 3050 5950 5950
Wire Notes Line
	5950 5950 6850 5950
Wire Notes Line
	6850 5950 6850 3050
Wire Notes Line
	6850 3050 5950 3050
Text Notes 6750 5050 1    50   ~ 0
Positive Amplification
Wire Notes Line
	5650 5950 4750 5950
Wire Notes Line
	4750 5950 4750 3050
Wire Notes Line
	4750 3050 5650 3050
Wire Notes Line
	5650 3050 5650 5950
Text Notes 4900 5050 1    50   ~ 0
Negative Amplification
Wire Notes Line
	8850 6400 8850 3050
Wire Notes Line
	8850 3050 7100 3050
Wire Notes Line
	7100 3050 7100 6400
Wire Notes Line
	7100 6400 8850 6400
Wire Notes Line
	9050 6400 10800 6400
Wire Notes Line
	10800 6400 10800 3050
Wire Notes Line
	10800 3050 9050 3050
Wire Notes Line
	9050 3050 9050 6400
Wire Wire Line
	9200 1450 9200 1550
Wire Wire Line
	6400 1550 6400 2450
Wire Wire Line
	4600 5900 4600 6050
Wire Wire Line
	4600 6050 5800 6050
Wire Wire Line
	5800 6000 5800 6050
Text Notes 4050 5450 0    50   ~ 0
Masse
Wire Wire Line
	2600 5900 3100 5900
Wire Wire Line
	3000 5000 3100 5000
Wire Wire Line
	4050 2800 4500 2800
Connection ~ 3100 5000
Connection ~ 3100 5900
Wire Wire Line
	3100 5900 3550 5900
Wire Wire Line
	3100 5000 3550 5000
Wire Wire Line
	3900 5450 4500 5450
Connection ~ 3550 5000
Connection ~ 3550 5900
Wire Wire Line
	3550 5900 3900 5900
Wire Wire Line
	3550 5000 3900 5000
Connection ~ 3900 5000
Connection ~ 3900 5900
Wire Wire Line
	3900 5000 4600 5000
Wire Wire Line
	3900 5900 4600 5900
Connection ~ 4500 2800
Wire Wire Line
	4500 2800 4500 5450
Connection ~ 2850 3700
Wire Wire Line
	2850 3700 4050 3700
Wire Wire Line
	2000 3700 2850 3700
Wire Notes Line
	4300 3800 1450 3800
Wire Notes Line
	1450 1850 1450 3800
Wire Notes Line
	4300 3800 4300 1850
Wire Notes Line
	1450 1850 4300 1850
Text Notes 1550 2000 0    50   ~ 0
Alientation Filaments
Wire Wire Line
	5800 2800 6400 2800
Wire Wire Line
	4500 2800 5800 2800
Connection ~ 5050 2450
Wire Wire Line
	5050 2450 4850 2450
Connection ~ 6400 2450
Connection ~ 8150 2450
Wire Wire Line
	6400 2450 6400 2800
Connection ~ 6400 2800
Wire Wire Line
	6400 2800 8950 2800
Wire Wire Line
	5050 2450 6400 2450
Text Notes 6850 1650 0    50   ~ 0
AC
Text Notes 5850 1650 0    50   ~ 0
AC
Text Notes 5850 1500 0    50   ~ 0
DC
Text Notes 6850 1500 0    50   ~ 0
DC
Wire Wire Line
	8950 1050 8950 1550
Wire Notes Line
	8450 700  9450 700 
Wire Notes Line
	9450 700  9450 1100
Wire Notes Line
	9450 1100 8450 1100
Wire Notes Line
	8450 1100 8450 700 
Text Notes 8800 800  0    50   ~ 0
AC inputs
Wire Wire Line
	6400 1050 6400 1550
Connection ~ 6650 1550
Wire Wire Line
	6650 1550 6700 1550
Wire Wire Line
	6150 1050 6150 1550
Wire Notes Line
	5900 700  6900 700 
Wire Notes Line
	6900 700  6900 1100
Wire Notes Line
	5900 1100 5900 700 
Text Notes 6200 800  0    50   ~ 0
DC inputs
Wire Notes Line
	6900 1100 5900 1100
Wire Wire Line
	8150 2450 8950 2450
Wire Wire Line
	6400 2450 8150 2450
Text Notes 9500 1150 0    50   ~ 0
the capacitor between TP1 and TP2\nserves to remove DC bias from\nyour AC signal if you\nconnect between TP1 and TP3,\nor to keep the DC bias if you\nconnect between TP2 and TP3.
Wire Notes Line
	9800 1200 9800 1300
Wire Notes Line
	9800 1300 9550 1300
Wire Notes Line
	9600 1250 9600 1350
Wire Notes Line
	9550 1300 9600 1250
Wire Notes Line
	9550 1300 9600 1350
Wire Notes Line
	9100 1200 9300 1200
Wire Notes Line
	9300 1200 9300 1400
Wire Notes Line
	9300 1400 9100 1400
Wire Notes Line
	9100 1400 9100 1200
Wire Wire Line
	9200 1550 8950 1550
Connection ~ 8950 1550
Wire Wire Line
	8950 1550 8950 2450
Text Notes 3250 1250 0    50   ~ 0
V7 serves as the AC signal amplifier,\nV6 serves as the balance\n(with the 900pF cap ensuring V6g and V6k\nare AC linked so only DC changes which\nwould affect both V6 and V7 are amplified)\nto maintain a +/- signal in the comparaison circuit\nso that   V7(no load) - V6 = 0
$EndSCHEMATC
