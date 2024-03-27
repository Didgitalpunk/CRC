EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3500 3500 1500 2000
U 5F3E0F39
F0 "Selecteur HT" 50
F1 "Selecteur HT.sch" 50
F2 "SelectHV_1KV" I L 3500 3800 50 
F3 "SelectHV_2KV" I L 3500 3900 50 
F4 "SelectHV_3KV" I L 3500 4000 50 
F5 "SelecteurHV_P" I L 3500 4150 50 
$EndSheet
$Sheet
S 3500 1000 1500 2000
U 5F3E11CE
F0 "Selecteur Polaritee" 50
F1 "Selecteur Polaritee.sch" 50
F2 "SelecteurPolariteeHT" I L 3500 1550 50 
F3 "SelecteurPolariteeMasse" I L 3500 1250 50 
F4 "SelecteurPolariteeRED" I L 3500 1400 50 
$EndSheet
$Sheet
S 1000 3500 1500 1500
U 5F43C97B
F0 "boardOnTop" 50
F1 "boardOnTop.sch" 50
F2 "HVhookup" I L 1000 3650 50 
F3 "FilamentHVhookup" I L 1000 3800 50 
$EndSheet
Wire Wire Line
	1000 3650 900  3650
Wire Wire Line
	900  3650 900  2850
Wire Wire Line
	900  2850 1000 2850
Wire Wire Line
	1000 3800 800  3800
Wire Wire Line
	800  3800 800  2700
Wire Wire Line
	800  2700 1000 2700
$Sheet
S 1000 1000 1500 2000
U 5F35DEEB
F0 "Alimentation" 50
F1 "Alimentation.sch" 50
F2 "SelectHV_1KV" I R 2500 2500 50 
F3 "SelectHV_2KV" I R 2500 2600 50 
F4 "SelectHV_3KV" I R 2500 2700 50 
F5 "SelecteurHV_P" I R 2500 2850 50 
F6 "HVhookup" I L 1000 2850 50 
F7 "FilamentHVhookup" I L 1000 2700 50 
F8 "SelecteurPolariteeMasse" I R 2500 1250 50 
F9 "SelecteurPolariteeRED" I R 2500 1400 50 
F10 "SelecteurPolariteeHV" I R 2500 1550 50 
$EndSheet
Wire Wire Line
	3500 1250 2500 1250
Wire Wire Line
	3500 1550 2500 1550
Wire Wire Line
	2500 1400 3500 1400
Wire Wire Line
	3500 3800 3150 3800
Wire Wire Line
	3150 3800 3150 2500
Wire Wire Line
	3150 2500 2500 2500
Wire Wire Line
	2500 2600 3050 2600
Wire Wire Line
	3050 2600 3050 3900
Wire Wire Line
	3050 3900 3500 3900
Wire Wire Line
	3500 4000 2950 4000
Wire Wire Line
	2950 4000 2950 2700
Wire Wire Line
	2950 2700 2500 2700
Wire Wire Line
	2500 2850 2800 2850
Wire Wire Line
	2800 2850 2800 4150
Wire Wire Line
	2800 4150 3500 4150
$EndSCHEMATC
