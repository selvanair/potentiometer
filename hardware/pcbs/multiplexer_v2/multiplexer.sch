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
LIBS:special
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
LIBS:adg44x
LIBS:multiplexer-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "18 jan 2019"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADG44X U1
U 1 1 5B4BC4A2
P 5850 1600
F 0 "U1" H 5850 2050 60  0000 C CNN
F 1 "ADG44X" H 5850 1000 60  0000 C CNN
F 2 "~" H 5900 1600 60  0000 C CNN
F 3 "~" H 5900 1600 60  0000 C CNN
	1    5850 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K1
U 1 1 5B4BC53E
P 2350 1050
F 0 "K1" V 2300 1050 50  0000 C CNN
F 1 "CONN_3" V 2400 1050 40  0000 C CNN
F 2 "" H 2350 1050 60  0000 C CNN
F 3 "" H 2350 1050 60  0000 C CNN
	1    2350 1050
	1    0    0    -1  
$EndComp
Text Label 1750 950  2    60   ~ 0
CTR
Text Label 1750 1150 2    60   ~ 0
WRK
Text Label 1750 1050 2    60   ~ 0
REF
Text Label 6600 1300 0    60   ~ 0
WRK
Text Label 5100 1300 2    60   ~ 0
WRK_1
Text Label 5100 1400 2    60   ~ 0
WRK_2
Text Label 5100 1500 2    60   ~ 0
WRK_3
Text Label 5100 1600 2    60   ~ 0
WRK_4
Text Label 6600 1750 0    60   ~ 0
+12V
Text Label 6600 1850 0    60   ~ 0
-12V
Text Label 6600 1950 0    60   ~ 0
GND
NoConn ~ 6350 2050
$Comp
L CONN_5X2 P2
U 1 1 5B4BC67F
P 2150 4500
F 0 "P2" H 2150 4800 60  0000 C CNN
F 1 "CONN_5X2" V 2150 4500 50  0000 C CNN
F 2 "" H 2150 4500 60  0000 C CNN
F 3 "" H 2150 4500 60  0000 C CNN
	1    2150 4500
	1    0    0    -1  
$EndComp
$Comp
L CONN_5X2 P1
U 1 1 5B4BC7E9
P 2150 3550
F 0 "P1" H 2150 3850 60  0000 C CNN
F 1 "CONN_5X2" V 2150 3550 50  0000 C CNN
F 2 "" H 2150 3550 60  0000 C CNN
F 3 "" H 2150 3550 60  0000 C CNN
	1    2150 3550
	1    0    0    -1  
$EndComp
Text Label 1500 4400 2    60   ~ 0
D3
Text Label 1500 4500 2    60   ~ 0
D19
Text Label 1500 4600 2    60   ~ 0
D12
Text Label 1500 4700 2    60   ~ 0
D13
Text Label 2800 4400 0    60   ~ 0
D4
Text Label 2800 4500 0    60   ~ 0
D18
Text Label 2800 4600 0    60   ~ 0
D11
Text Label 2800 4700 0    60   ~ 0
D10
NoConn ~ 1750 4300
NoConn ~ 2550 4300
Text Label 2800 3350 0    60   ~ 0
GND
Text Label 1500 3450 2    60   ~ 0
D24
Text Label 1500 3550 2    60   ~ 0
D26
Text Label 1500 3650 2    60   ~ 0
D28
Text Label 1500 3750 2    60   ~ 0
D30
Text Label 2800 3450 0    60   ~ 0
D25
Text Label 2800 3550 0    60   ~ 0
D27
Text Label 2800 3650 0    60   ~ 0
D29
Text Label 2800 3750 0    60   ~ 0
D31
Text Label 5100 1750 2    60   ~ 0
D24
Text Label 5100 1850 2    60   ~ 0
D25
Text Label 5100 1950 2    60   ~ 0
D26
Text Label 5100 2050 2    60   ~ 0
D27
$Comp
L ADG44X U2
U 1 1 5B4BC959
P 5850 3500
F 0 "U2" H 5850 3950 60  0000 C CNN
F 1 "ADG44X" H 5850 2900 60  0000 C CNN
F 2 "~" H 5900 3500 60  0000 C CNN
F 3 "~" H 5900 3500 60  0000 C CNN
	1    5850 3500
	1    0    0    -1  
$EndComp
Text Label 5100 3200 2    60   ~ 0
WRK_1
Text Label 5100 3300 2    60   ~ 0
WRK_2
Text Label 5100 3400 2    60   ~ 0
WRK_3
Text Label 5100 3500 2    60   ~ 0
WRK_4
Text Label 6600 3650 0    60   ~ 0
+12V
Text Label 6600 3750 0    60   ~ 0
-12V
Text Label 6600 3850 0    60   ~ 0
GND
NoConn ~ 6350 3950
Text Label 5100 3650 2    60   ~ 0
D28
Text Label 5100 3750 2    60   ~ 0
D29
Text Label 5100 3850 2    60   ~ 0
D30
Text Label 5100 3950 2    60   ~ 0
D31
Text Label 6600 3200 0    60   ~ 0
GND
$Comp
L ADG44X U3
U 1 1 5B4BC991
P 9350 1600
F 0 "U3" H 9350 2050 60  0000 C CNN
F 1 "ADG44X" H 9350 1000 60  0000 C CNN
F 2 "~" H 9400 1600 60  0000 C CNN
F 3 "~" H 9400 1600 60  0000 C CNN
	1    9350 1600
	1    0    0    -1  
$EndComp
Text Label 10100 1400 0    60   ~ 0
WRK
Text Label 8600 1300 2    60   ~ 0
CTR_SW
Text Label 8600 1400 2    60   ~ 0
WRK_5
Text Label 8600 1500 2    60   ~ 0
WRK_6
Text Label 8600 1600 2    60   ~ 0
WRK_7
Text Label 10100 1750 0    60   ~ 0
+12V
Text Label 10100 1850 0    60   ~ 0
-12V
Text Label 10100 1950 0    60   ~ 0
GND
NoConn ~ 9850 2050
$Comp
L ADG44X U4
U 1 1 5B4BC9B7
P 9350 3500
F 0 "U4" H 9350 3950 60  0000 C CNN
F 1 "ADG44X" H 9350 2900 60  0000 C CNN
F 2 "~" H 9400 3500 60  0000 C CNN
F 3 "~" H 9400 3500 60  0000 C CNN
	1    9350 3500
	1    0    0    -1  
$EndComp
Text Label 8600 3300 2    60   ~ 0
WRK_5
Text Label 8600 3400 2    60   ~ 0
WRK_6
Text Label 8600 3500 2    60   ~ 0
WRK_7
Text Label 10100 3650 0    60   ~ 0
+12V
Text Label 10100 3750 0    60   ~ 0
-12V
Text Label 10100 3850 0    60   ~ 0
GND
NoConn ~ 9850 3950
Text Label 10100 3300 0    60   ~ 0
GND
Wire Wire Line
	5350 1750 5100 1750
Wire Wire Line
	5350 1850 5100 1850
Wire Wire Line
	5350 1950 5100 1950
Wire Wire Line
	5350 2050 5100 2050
Wire Wire Line
	6350 1750 6600 1750
Wire Wire Line
	6350 1850 6600 1850
Wire Wire Line
	6350 1950 6600 1950
Wire Wire Line
	6350 1300 6600 1300
Wire Wire Line
	6450 1300 6450 1600
Wire Wire Line
	6450 1600 6350 1600
Wire Wire Line
	6350 1400 6450 1400
Connection ~ 6450 1400
Wire Wire Line
	6350 1500 6450 1500
Connection ~ 6450 1500
Connection ~ 6450 1300
Wire Wire Line
	2000 950  1750 950 
Wire Wire Line
	2000 1050 1750 1050
Wire Wire Line
	2000 1150 1750 1150
Wire Wire Line
	5350 1300 5100 1300
Wire Wire Line
	5350 1400 5100 1400
Wire Wire Line
	5350 1500 5100 1500
Wire Wire Line
	5350 1600 5100 1600
Wire Wire Line
	2550 4400 2800 4400
Wire Wire Line
	2550 4500 2800 4500
Wire Wire Line
	2550 4600 2800 4600
Wire Wire Line
	2550 4700 2800 4700
Wire Wire Line
	1750 4500 1500 4500
Wire Wire Line
	1750 4600 1500 4600
Wire Wire Line
	1750 4700 1500 4700
Wire Wire Line
	2550 3350 2800 3350
Wire Wire Line
	2550 3450 2800 3450
Wire Wire Line
	2550 3550 2800 3550
Wire Wire Line
	2550 3650 2800 3650
Wire Wire Line
	2550 3750 2800 3750
Wire Wire Line
	1750 3450 1500 3450
Wire Wire Line
	1750 3550 1500 3550
Wire Wire Line
	1750 3650 1500 3650
Wire Wire Line
	1750 3750 1500 3750
Wire Wire Line
	1750 4400 1500 4400
Wire Wire Line
	5350 3650 5100 3650
Wire Wire Line
	5350 3750 5100 3750
Wire Wire Line
	5350 3850 5100 3850
Wire Wire Line
	5350 3950 5100 3950
Wire Wire Line
	6350 3650 6600 3650
Wire Wire Line
	6350 3750 6600 3750
Wire Wire Line
	6350 3850 6600 3850
Wire Wire Line
	6350 3200 6600 3200
Wire Wire Line
	6450 3200 6450 3500
Wire Wire Line
	6450 3500 6350 3500
Wire Wire Line
	6350 3300 6450 3300
Connection ~ 6450 3300
Wire Wire Line
	6350 3400 6450 3400
Connection ~ 6450 3400
Connection ~ 6450 3200
Wire Wire Line
	5350 3200 5100 3200
Wire Wire Line
	5350 3300 5100 3300
Wire Wire Line
	5350 3400 5100 3400
Wire Wire Line
	5350 3500 5100 3500
Wire Wire Line
	8850 1750 8600 1750
Wire Wire Line
	8850 1850 8600 1850
Wire Wire Line
	8850 1950 8600 1950
Wire Wire Line
	8850 2050 8600 2050
Wire Wire Line
	9850 1750 10100 1750
Wire Wire Line
	9850 1850 10100 1850
Wire Wire Line
	9850 1950 10100 1950
Wire Wire Line
	9950 1600 9850 1600
Wire Wire Line
	8850 1300 8600 1300
Wire Wire Line
	8850 1400 8600 1400
Wire Wire Line
	8850 1500 8600 1500
Wire Wire Line
	8850 1600 8600 1600
Wire Wire Line
	8850 3650 8600 3650
Wire Wire Line
	8850 3750 8600 3750
Wire Wire Line
	8850 3850 8600 3850
Wire Wire Line
	8850 3950 8600 3950
Wire Wire Line
	9850 3650 10100 3650
Wire Wire Line
	9850 3750 10100 3750
Wire Wire Line
	9850 3850 10100 3850
Wire Wire Line
	9850 3200 10100 3200
Wire Wire Line
	9950 3500 9850 3500
Wire Wire Line
	9850 3300 10100 3300
Wire Wire Line
	9850 3400 9950 3400
Connection ~ 9950 3400
Wire Wire Line
	8850 3200 8600 3200
Wire Wire Line
	8850 3300 8600 3300
Wire Wire Line
	8850 3400 8600 3400
Wire Wire Line
	8850 3500 8600 3500
Wire Wire Line
	9850 1400 10100 1400
Wire Wire Line
	9950 1400 9950 1600
Wire Wire Line
	9850 1500 9950 1500
Connection ~ 9950 1500
Connection ~ 9950 1400
Wire Wire Line
	9850 1300 10100 1300
Wire Wire Line
	9950 3300 9950 3500
Connection ~ 9950 3300
Text Label 8600 3200 2    60   ~ 0
REF_SW
Text Label 10100 1300 0    60   ~ 0
CTR
Text Label 10100 3200 0    60   ~ 0
REF
Text Label 8600 1750 2    60   ~ 0
D3
Text Label 8600 1850 2    60   ~ 0
D4
Text Label 8600 1950 2    60   ~ 0
D19
Text Label 8600 2050 2    60   ~ 0
D18
Text Label 8600 3650 2    60   ~ 0
D12
Text Label 8600 3750 2    60   ~ 0
D11
Text Label 8600 3850 2    60   ~ 0
D13
Text Label 8600 3950 2    60   ~ 0
D10
$Comp
L CONN_2 P3
U 1 1 5B4BCEAB
P 2400 1900
F 0 "P3" V 2350 1900 40  0000 C CNN
F 1 "CONN_2" V 2450 1900 40  0000 C CNN
F 2 "" H 2400 1900 60  0000 C CNN
F 3 "" H 2400 1900 60  0000 C CNN
	1    2400 1900
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P4
U 1 1 5B4BCEBA
P 2400 2400
F 0 "P4" V 2350 2400 40  0000 C CNN
F 1 "CONN_2" V 2450 2400 40  0000 C CNN
F 2 "" H 2400 2400 60  0000 C CNN
F 3 "" H 2400 2400 60  0000 C CNN
	1    2400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1800 1950 1800
Wire Wire Line
	1950 1800 1950 2000
Wire Wire Line
	1950 2000 2050 2000
Wire Wire Line
	1950 1900 1750 1900
Connection ~ 1950 1900
Wire Wire Line
	2050 2300 1950 2300
Wire Wire Line
	1950 2300 1950 2500
Wire Wire Line
	1950 2500 2050 2500
Wire Wire Line
	1950 2400 1750 2400
Connection ~ 1950 2400
Text Label 1750 1900 2    60   ~ 0
+12V
Text Label 1750 2400 2    60   ~ 0
-12V
$Comp
L C C1
U 1 1 5B4BD185
P 4100 1500
F 0 "C1" H 4100 1600 40  0000 L CNN
F 1 "0.1uF" H 4106 1415 40  0000 L CNN
F 2 "~" H 4138 1350 30  0000 C CNN
F 3 "~" H 4100 1500 60  0000 C CNN
	1    4100 1500
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B4BD194
P 4450 1500
F 0 "C3" H 4450 1600 40  0000 L CNN
F 1 "0.1uF" H 4456 1415 40  0000 L CNN
F 2 "~" H 4488 1350 30  0000 C CNN
F 3 "~" H 4450 1500 60  0000 C CNN
	1    4450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1300 4100 1050
Wire Wire Line
	4100 1700 4100 1950
Wire Wire Line
	4450 1300 4450 1050
Wire Wire Line
	4450 1700 4450 1950
Text Label 4100 1050 1    60   ~ 0
GND
Text Label 4100 1950 3    60   ~ 0
-12V
Text Label 4450 1050 1    60   ~ 0
+12V
Text Label 4450 1950 3    60   ~ 0
GND
$Comp
L C C2
U 1 1 5B4BD3A9
P 4150 3400
F 0 "C2" H 4150 3500 40  0000 L CNN
F 1 "0.1uF" H 4156 3315 40  0000 L CNN
F 2 "~" H 4188 3250 30  0000 C CNN
F 3 "~" H 4150 3400 60  0000 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5B4BD3AF
P 4500 3400
F 0 "C4" H 4500 3500 40  0000 L CNN
F 1 "0.1uF" H 4506 3315 40  0000 L CNN
F 2 "~" H 4538 3250 30  0000 C CNN
F 3 "~" H 4500 3400 60  0000 C CNN
	1    4500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3200 4150 2950
Wire Wire Line
	4150 3600 4150 3850
Wire Wire Line
	4500 3200 4500 2950
Wire Wire Line
	4500 3600 4500 3850
Text Label 4150 2950 1    60   ~ 0
GND
Text Label 4150 3850 3    60   ~ 0
-12V
Text Label 4500 2950 1    60   ~ 0
+12V
Text Label 4500 3850 3    60   ~ 0
GND
$Comp
L C C5
U 1 1 5B4BD3BD
P 7650 1500
F 0 "C5" H 7650 1600 40  0000 L CNN
F 1 "0.1uF" H 7656 1415 40  0000 L CNN
F 2 "~" H 7688 1350 30  0000 C CNN
F 3 "~" H 7650 1500 60  0000 C CNN
	1    7650 1500
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5B4BD3C3
P 8000 1500
F 0 "C7" H 8000 1600 40  0000 L CNN
F 1 "0.1uF" H 8006 1415 40  0000 L CNN
F 2 "~" H 8038 1350 30  0000 C CNN
F 3 "~" H 8000 1500 60  0000 C CNN
	1    8000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1300 7650 1050
Wire Wire Line
	7650 1700 7650 1950
Wire Wire Line
	8000 1300 8000 1050
Wire Wire Line
	8000 1700 8000 1950
Text Label 7650 1050 1    60   ~ 0
GND
Text Label 7650 1950 3    60   ~ 0
-12V
Text Label 8000 1050 1    60   ~ 0
+12V
Text Label 8000 1950 3    60   ~ 0
GND
$Comp
L C C6
U 1 1 5B4BD3D1
P 7650 3250
F 0 "C6" H 7650 3350 40  0000 L CNN
F 1 "0.1uF" H 7656 3165 40  0000 L CNN
F 2 "~" H 7688 3100 30  0000 C CNN
F 3 "~" H 7650 3250 60  0000 C CNN
	1    7650 3250
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5B4BD3D7
P 8000 3250
F 0 "C8" H 8000 3350 40  0000 L CNN
F 1 "0.1uF" H 8006 3165 40  0000 L CNN
F 2 "~" H 8038 3100 30  0000 C CNN
F 3 "~" H 8000 3250 60  0000 C CNN
	1    8000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3050 7650 2800
Wire Wire Line
	7650 3450 7650 3700
Wire Wire Line
	8000 3050 8000 2800
Wire Wire Line
	8000 3450 8000 3700
Text Label 7650 2800 1    60   ~ 0
GND
Text Label 7650 3700 3    60   ~ 0
-12V
Text Label 8000 2800 1    60   ~ 0
+12V
Text Label 8000 3700 3    60   ~ 0
GND
Wire Notes Line
	6150 2800 6100 2800
Wire Wire Line
	9800 5300 10050 5300
Wire Wire Line
	9000 5400 8750 5400
Wire Wire Line
	9800 5400 10050 5400
Wire Wire Line
	9000 5500 8750 5500
Wire Wire Line
	9000 5200 8700 5200
Wire Wire Line
	10100 5200 9800 5200
Wire Wire Line
	8700 5300 9000 5300
Text Label 8700 5200 2    60   ~ 0
GND
Text Label 10100 5200 0    60   ~ 0
CTR_SW
Text Label 8700 5300 2    60   ~ 0
REF_SW
Wire Wire Line
	9800 5500 10050 5500
Wire Wire Line
	9000 5600 8750 5600
Wire Wire Line
	9800 5600 10050 5600
Text Label 10050 5300 0    60   ~ 0
WRK_1
Text Label 8750 5400 2    60   ~ 0
WRK_2
Text Label 10050 5400 0    60   ~ 0
WRK_3
Text Label 8750 5500 2    60   ~ 0
WRK_4
Text Label 10050 5500 0    60   ~ 0
WRK_5
Text Label 8750 5600 2    60   ~ 0
WRK_6
Text Label 10050 5600 0    60   ~ 0
WRK_7
Text Notes 3100 1400 2    60   ~ 0
Electrode connections to rodeostat PCB
Text Notes 2650 2750 2    60   ~ 0
Power input for switches
Text Notes 2800 4900 2    60   ~ 0
Connections from UEXT header
Text Notes 2700 3950 2    60   ~ 0
Connections from DIO header
Text Notes 10050 5800 2    60   ~ 0
Electrode Connection Header
Text Notes 6700 4450 2    60   ~ 0
Multiplexing for working electrodes 1-4
Text Notes 9850 4450 2    60   ~ 0
Multiplexing for working electrodes 5-7 plus\nswitches for counter and reference electrodes
NoConn ~ 1750 3350
$Comp
L PWR_FLAG #FLG01
U 1 1 5B4BE4A7
P 1800 5600
F 0 "#FLG01" H 1800 5695 30  0001 C CNN
F 1 "PWR_FLAG" H 1800 5780 30  0000 C CNN
F 2 "" H 1800 5600 60  0000 C CNN
F 3 "" H 1800 5600 60  0000 C CNN
	1    1800 5600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5B4BE4B6
P 2200 5600
F 0 "#FLG02" H 2200 5695 30  0001 C CNN
F 1 "PWR_FLAG" H 2200 5780 30  0000 C CNN
F 2 "" H 2200 5600 60  0000 C CNN
F 3 "" H 2200 5600 60  0000 C CNN
	1    2200 5600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5B4BE4C5
P 2600 5600
F 0 "#FLG03" H 2600 5695 30  0001 C CNN
F 1 "PWR_FLAG" H 2600 5780 30  0000 C CNN
F 2 "" H 2600 5600 60  0000 C CNN
F 3 "" H 2600 5600 60  0000 C CNN
	1    2600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5600 1800 5800
Wire Wire Line
	2200 5600 2200 5800
Wire Wire Line
	2600 5600 2600 5800
Text Label 1800 5800 3    60   ~ 0
+12V
Text Label 2200 5800 3    60   ~ 0
-12V
Text Label 2600 5800 3    60   ~ 0
GND
Text Notes 2050 750  0    60   ~ 0
	S5478-ND
$Comp
L CONN_5X2 P5
U 1 1 5C3E8ED4
P 9400 5400
F 0 "P5" H 9400 5700 60  0000 C CNN
F 1 "CONN_5X2" V 9400 5400 50  0000 C CNN
F 2 "" H 9400 5400 60  0000 C CNN
F 3 "" H 9400 5400 60  0000 C CNN
	1    9400 5400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
