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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HE1 Terminal"
Date "2017-03-26"
Rev "0"
Comp "coon@c-base.org"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Q_NPN_CBE Q1
U 1 1 58D78E33
P 2000 2550
F 0 "Q1" H 2200 2600 50  0000 L CNN
F 1 "Q_NPN_CBE" H 2200 2500 50  0000 L CNN
F 2 "" H 2200 2650 50  0000 C CNN
F 3 "" H 2000 2550 50  0000 C CNN
	1    2000 2550
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR01
U 1 1 58D791F1
P 750 950
F 0 "#PWR01" H 750 800 50  0001 C CNN
F 1 "+9V" H 750 1090 50  0000 C CNN
F 2 "" H 750 950 50  0000 C CNN
F 3 "" H 750 950 50  0000 C CNN
	1    750  950 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 58D79227
P 1550 900
F 0 "#PWR02" H 1550 750 50  0001 C CNN
F 1 "+5V" H 1550 1040 50  0000 C CNN
F 2 "" H 1550 900 50  0000 C CNN
F 3 "" H 1550 900 50  0000 C CNN
	1    1550 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58D792C3
P 2450 900
F 0 "#PWR03" H 2450 650 50  0001 C CNN
F 1 "GND" H 2450 750 50  0000 C CNN
F 2 "" H 2450 900 50  0000 C CNN
F 3 "" H 2450 900 50  0000 C CNN
	1    2450 900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 58D79607
P 2450 900
F 0 "#FLG04" H 2450 995 50  0001 C CNN
F 1 "PWR_FLAG" H 2450 1080 50  0000 C CNN
F 2 "" H 2450 900 50  0000 C CNN
F 3 "" H 2450 900 50  0000 C CNN
	1    2450 900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 58D7963B
P 1150 900
F 0 "#FLG05" H 1150 995 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 1080 50  0000 C CNN
F 2 "" H 1150 900 50  0000 C CNN
F 3 "" H 1150 900 50  0000 C CNN
	1    1150 900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 58D7966D
P 1950 900
F 0 "#FLG06" H 1950 995 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 1080 50  0000 C CNN
F 2 "" H 1950 900 50  0000 C CNN
F 3 "" H 1950 900 50  0000 C CNN
	1    1950 900 
	1    0    0    -1  
$EndComp
$Comp
L DB25 J1
U 1 1 58D79A54
P 5000 4700
F 0 "J1" H 5050 6050 50  0000 C CNN
F 1 "DB25" H 4950 3350 50  0000 C CNN
F 2 "" H 5000 4700 50  0000 C CNN
F 3 "" H 5000 4700 50  0000 C CNN
	1    5000 4700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 58D7A1BB
P 5100 3750
F 0 "#PWR07" H 5100 3500 50  0001 C CNN
F 1 "GND" H 5100 3600 50  0000 C CNN
F 2 "" H 5100 3750 50  0000 C CNN
F 3 "" H 5100 3750 50  0000 C CNN
	1    5100 3750
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR08
U 1 1 58D7A9AD
P 1800 1800
F 0 "#PWR08" H 1800 1650 50  0001 C CNN
F 1 "+9V" H 1800 1940 50  0000 C CNN
F 2 "" H 1800 1800 50  0000 C CNN
F 3 "" H 1800 1800 50  0000 C CNN
	1    1800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  950  750  1100
Wire Wire Line
	750  1100 1150 1100
Wire Wire Line
	1150 1100 1150 900 
Wire Wire Line
	1550 900  1550 1100
Wire Wire Line
	1550 1100 1950 1100
Wire Wire Line
	1950 1100 1950 900 
Wire Wire Line
	4900 4250 4900 3600
Wire Wire Line
	4900 3600 5100 3600
Wire Wire Line
	5100 3600 5100 3750
Wire Wire Line
	2100 2750 2100 3500
Wire Wire Line
	2100 3500 5300 3500
Wire Wire Line
	5300 3500 5300 4250
Wire Wire Line
	1550 2550 1800 2550
Wire Wire Line
	1800 2350 1550 2350
Wire Wire Line
	1800 1800 1800 2350
Wire Wire Line
	2100 2350 2100 2200
Wire Wire Line
	2100 2200 1800 2200
Connection ~ 1800 2200
$Comp
L R R1
U 1 1 58D7ABCE
P 750 2100
F 0 "R1" V 830 2100 50  0000 C CNN
F 1 "510" V 750 2100 50  0000 C CNN
F 2 "" V 680 2100 50  0000 C CNN
F 3 "" H 750 2100 50  0000 C CNN
	1    750  2100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 58D7ACD3
P 750 1800
F 0 "#PWR09" H 750 1650 50  0001 C CNN
F 1 "+5V" H 750 1940 50  0000 C CNN
F 2 "" H 750 1800 50  0000 C CNN
F 3 "" H 750 1800 50  0000 C CNN
	1    750  1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1800 750  1950
Wire Wire Line
	750  2250 750  2350
Wire Wire Line
	750  2550 750  2750
$Comp
L GND #PWR010
U 1 1 58D7AD88
P 750 2750
F 0 "#PWR010" H 750 2500 50  0001 C CNN
F 1 "GND" H 750 2600 50  0000 C CNN
F 2 "" H 750 2750 50  0000 C CNN
F 3 "" H 750 2750 50  0000 C CNN
	1    750  2750
	1    0    0    -1  
$EndComp
$Comp
L LTV-817 U1
U 1 1 58D7B52D
P 1250 2450
F 0 "U1" H 1050 2650 50  0000 L CNN
F 1 "LTV-817" H 1250 2650 50  0000 L CNN
F 2 "DIP-4" H 1050 2250 50  0000 L CIN
F 3 "" H 1250 2350 50  0000 L CNN
	1    1250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  2350 950  2350
Wire Wire Line
	950  2550 750  2550
$EndSCHEMATC