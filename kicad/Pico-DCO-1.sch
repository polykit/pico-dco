EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
Title "Raspberry Pi Pico DCO"
Date "2021-05-03"
Rev "v1.0.1"
Comp "Jan Knipper"
Comment1 "github.com/polykit/pico-dco"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6350 3750 6350 4100
Wire Wire Line
	6350 4400 6350 4700
Wire Wire Line
	3250 3100 3600 3100
Wire Wire Line
	7650 3850 7750 3850
$Comp
L Device:R R?
U 1 1 60873A52
P 3900 2850
AR Path="/60873A52" Ref="R?"  Part="1" 
AR Path="/60864F99/60873A52" Ref="R3"  Part="1" 
AR Path="/60A567BE/60873A52" Ref="R20"  Part="1" 
AR Path="/60A5EC98/60873A52" Ref="R?"  Part="1" 
AR Path="/60A67127/60873A52" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873A52" Ref="R20"  Part="1" 
AR Path="/60AC3F2C/60873A52" Ref="R20"  Part="1" 
AR Path="/60ADE329/60873A52" Ref="R34"  Part="1" 
AR Path="/60ADFCBC/60873A52" Ref="R48"  Part="1" 
AR Path="/60AE15A4/60873A52" Ref="R62"  Part="1" 
AR Path="/60AE2DA8/60873A52" Ref="R76"  Part="1" 
F 0 "R76" V 3693 2850 50  0000 C CNN
F 1 "100k" V 3784 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3830 2850 50  0001 C CNN
F 3 "~" H 3900 2850 50  0001 C CNN
	1    3900 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60873A58
P 3100 3100
AR Path="/60873A58" Ref="R?"  Part="1" 
AR Path="/60864F99/60873A58" Ref="R2"  Part="1" 
AR Path="/60A567BE/60873A58" Ref="R19"  Part="1" 
AR Path="/60A5EC98/60873A58" Ref="R?"  Part="1" 
AR Path="/60A67127/60873A58" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873A58" Ref="R19"  Part="1" 
AR Path="/60AC3F2C/60873A58" Ref="R19"  Part="1" 
AR Path="/60ADE329/60873A58" Ref="R33"  Part="1" 
AR Path="/60ADFCBC/60873A58" Ref="R47"  Part="1" 
AR Path="/60AE15A4/60873A58" Ref="R61"  Part="1" 
AR Path="/60AE2DA8/60873A58" Ref="R75"  Part="1" 
F 0 "R75" V 2893 3100 50  0000 C CNN
F 1 "100k" V 2984 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 3100 50  0001 C CNN
F 3 "~" H 3100 3100 50  0001 C CNN
	1    3100 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3200 4400 3200
$Comp
L power:GND #PWR?
U 1 1 60873A5F
P 3500 3650
AR Path="/60873A5F" Ref="#PWR?"  Part="1" 
AR Path="/60864F99/60873A5F" Ref="#PWR0103"  Part="1" 
AR Path="/60A567BE/60873A5F" Ref="#PWR0129"  Part="1" 
AR Path="/60A5EC98/60873A5F" Ref="#PWR?"  Part="1" 
AR Path="/60A67127/60873A5F" Ref="#PWR?"  Part="1" 
AR Path="/60A89C21/60873A5F" Ref="#PWR0129"  Part="1" 
AR Path="/60AC3F2C/60873A5F" Ref="#PWR0129"  Part="1" 
AR Path="/60ADE329/60873A5F" Ref="#PWR0138"  Part="1" 
AR Path="/60ADFCBC/60873A5F" Ref="#PWR0147"  Part="1" 
AR Path="/60AE15A4/60873A5F" Ref="#PWR0156"  Part="1" 
AR Path="/60AE2DA8/60873A5F" Ref="#PWR0165"  Part="1" 
F 0 "#PWR0165" H 3500 3400 50  0001 C CNN
F 1 "GND" H 3505 3477 50  0000 C CNN
F 2 "" H 3500 3650 50  0001 C CNN
F 3 "" H 3500 3650 50  0001 C CNN
	1    3500 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60873A6E
P 6350 4700
AR Path="/60873A6E" Ref="#PWR?"  Part="1" 
AR Path="/60864F99/60873A6E" Ref="#PWR0104"  Part="1" 
AR Path="/60A567BE/60873A6E" Ref="#PWR0130"  Part="1" 
AR Path="/60A5EC98/60873A6E" Ref="#PWR?"  Part="1" 
AR Path="/60A67127/60873A6E" Ref="#PWR?"  Part="1" 
AR Path="/60A89C21/60873A6E" Ref="#PWR0130"  Part="1" 
AR Path="/60AC3F2C/60873A6E" Ref="#PWR0130"  Part="1" 
AR Path="/60ADE329/60873A6E" Ref="#PWR0139"  Part="1" 
AR Path="/60ADFCBC/60873A6E" Ref="#PWR0148"  Part="1" 
AR Path="/60AE15A4/60873A6E" Ref="#PWR0157"  Part="1" 
AR Path="/60AE2DA8/60873A6E" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 6350 4450 50  0001 C CNN
F 1 "GND" H 6355 4527 50  0000 C CNN
F 2 "" H 6350 4700 50  0001 C CNN
F 3 "" H 6350 4700 50  0001 C CNN
	1    6350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3750 6350 3750
$Comp
L Device:R R?
U 1 1 60873A7B
P 6350 4250
AR Path="/60873A7B" Ref="R?"  Part="1" 
AR Path="/60864F99/60873A7B" Ref="R13"  Part="1" 
AR Path="/60A567BE/60873A7B" Ref="R29"  Part="1" 
AR Path="/60A5EC98/60873A7B" Ref="R?"  Part="1" 
AR Path="/60A67127/60873A7B" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873A7B" Ref="R29"  Part="1" 
AR Path="/60AC3F2C/60873A7B" Ref="R29"  Part="1" 
AR Path="/60ADE329/60873A7B" Ref="R43"  Part="1" 
AR Path="/60ADFCBC/60873A7B" Ref="R57"  Part="1" 
AR Path="/60AE15A4/60873A7B" Ref="R71"  Part="1" 
AR Path="/60AE2DA8/60873A7B" Ref="R85"  Part="1" 
F 0 "R85" H 6280 4204 50  0000 R CNN
F 1 "100k" H 6280 4295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6280 4250 50  0001 C CNN
F 3 "~" H 6350 4250 50  0001 C CNN
	1    6350 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C?
U 1 1 60873A81
P 6100 3750
AR Path="/60873A81" Ref="C?"  Part="1" 
AR Path="/60864F99/60873A81" Ref="C4"  Part="1" 
AR Path="/60A567BE/60873A81" Ref="C14"  Part="1" 
AR Path="/60A5EC98/60873A81" Ref="C?"  Part="1" 
AR Path="/60A67127/60873A81" Ref="C?"  Part="1" 
AR Path="/60A89C21/60873A81" Ref="C14"  Part="1" 
AR Path="/60AC3F2C/60873A81" Ref="C14"  Part="1" 
AR Path="/60ADE329/60873A81" Ref="C19"  Part="1" 
AR Path="/60ADFCBC/60873A81" Ref="C24"  Part="1" 
AR Path="/60AE15A4/60873A81" Ref="C29"  Part="1" 
AR Path="/60AE2DA8/60873A81" Ref="C34"  Part="1" 
F 0 "C34" V 6355 3750 50  0000 C CNN
F 1 "10u" V 6264 3750 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6138 3600 50  0001 C CNN
F 3 "~" H 6100 3750 50  0001 C CNN
	1    6100 3750
	0    -1   -1   0   
$EndComp
Connection ~ 5650 3300
Wire Wire Line
	5650 3750 5950 3750
Wire Wire Line
	5650 3300 5650 3750
$Comp
L Amplifier_Operational:TL074 U?
U 2 1 60873A8A
P 3900 3200
AR Path="/60873A8A" Ref="U?"  Part="2" 
AR Path="/60864F99/60873A8A" Ref="U2"  Part="2" 
AR Path="/60A567BE/60873A8A" Ref="U4"  Part="2" 
AR Path="/60A5EC98/60873A8A" Ref="U?"  Part="2" 
AR Path="/60A67127/60873A8A" Ref="U?"  Part="2" 
AR Path="/60A89C21/60873A8A" Ref="U4"  Part="2" 
AR Path="/60AC3F2C/60873A8A" Ref="U4"  Part="2" 
AR Path="/60ADE329/60873A8A" Ref="U5"  Part="2" 
AR Path="/60ADFCBC/60873A8A" Ref="U6"  Part="2" 
AR Path="/60AE15A4/60873A8A" Ref="U7"  Part="2" 
AR Path="/60AE2DA8/60873A8A" Ref="U8"  Part="2" 
F 0 "U8" H 3900 3567 50  0000 C CNN
F 1 "TL074" H 3900 3476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3850 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3950 3400 50  0001 C CNN
	2    3900 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	5650 2200 5650 2000
Connection ~ 5650 2700
Wire Wire Line
	5650 2700 5650 2500
Wire Wire Line
	4950 2000 4950 2700
$Comp
L power:GND #PWR?
U 1 1 60873A94
P 4850 3650
AR Path="/60873A94" Ref="#PWR?"  Part="1" 
AR Path="/60864F99/60873A94" Ref="#PWR0105"  Part="1" 
AR Path="/60A567BE/60873A94" Ref="#PWR0131"  Part="1" 
AR Path="/60A5EC98/60873A94" Ref="#PWR?"  Part="1" 
AR Path="/60A67127/60873A94" Ref="#PWR?"  Part="1" 
AR Path="/60A89C21/60873A94" Ref="#PWR0131"  Part="1" 
AR Path="/60AC3F2C/60873A94" Ref="#PWR0131"  Part="1" 
AR Path="/60ADE329/60873A94" Ref="#PWR0140"  Part="1" 
AR Path="/60ADFCBC/60873A94" Ref="#PWR0149"  Part="1" 
AR Path="/60AE15A4/60873A94" Ref="#PWR0158"  Part="1" 
AR Path="/60AE2DA8/60873A94" Ref="#PWR0167"  Part="1" 
F 0 "#PWR0167" H 4850 3400 50  0001 C CNN
F 1 "GND" H 4855 3477 50  0000 C CNN
F 2 "" H 4850 3650 50  0001 C CNN
F 3 "" H 4850 3650 50  0001 C CNN
	1    4850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60873A9A
P 4550 3200
AR Path="/60873A9A" Ref="R?"  Part="1" 
AR Path="/60864F99/60873A9A" Ref="R6"  Part="1" 
AR Path="/60A567BE/60873A9A" Ref="R22"  Part="1" 
AR Path="/60A5EC98/60873A9A" Ref="R?"  Part="1" 
AR Path="/60A67127/60873A9A" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873A9A" Ref="R22"  Part="1" 
AR Path="/60AC3F2C/60873A9A" Ref="R22"  Part="1" 
AR Path="/60ADE329/60873A9A" Ref="R36"  Part="1" 
AR Path="/60ADFCBC/60873A9A" Ref="R50"  Part="1" 
AR Path="/60AE15A4/60873A9A" Ref="R64"  Part="1" 
AR Path="/60AE2DA8/60873A9A" Ref="R78"  Part="1" 
F 0 "R78" V 4343 3200 50  0000 C CNN
F 1 "100k" V 4434 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4480 3200 50  0001 C CNN
F 3 "~" H 4550 3200 50  0001 C CNN
	1    4550 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3300 5650 2700
Wire Wire Line
	5600 3300 5650 3300
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 60873AA2
P 5300 3300
AR Path="/60873AA2" Ref="U?"  Part="1" 
AR Path="/60864F99/60873AA2" Ref="U2"  Part="1" 
AR Path="/60A567BE/60873AA2" Ref="U4"  Part="1" 
AR Path="/60A5EC98/60873AA2" Ref="U?"  Part="1" 
AR Path="/60A67127/60873AA2" Ref="U?"  Part="1" 
AR Path="/60A89C21/60873AA2" Ref="U4"  Part="1" 
AR Path="/60AC3F2C/60873AA2" Ref="U4"  Part="1" 
AR Path="/60ADE329/60873AA2" Ref="U5"  Part="1" 
AR Path="/60ADFCBC/60873AA2" Ref="U6"  Part="1" 
AR Path="/60AE15A4/60873AA2" Ref="U7"  Part="1" 
AR Path="/60AE2DA8/60873AA2" Ref="U8"  Part="1" 
F 0 "U8" H 5300 3667 50  0000 C CNN
F 1 "TL074" H 5300 3576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5250 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5350 3500 50  0001 C CNN
	1    5300 3300
	1    0    0    1   
$EndComp
Wire Wire Line
	3650 1550 3950 1550
Wire Wire Line
	4450 1950 4450 2050
Wire Wire Line
	4450 1550 4650 1550
Connection ~ 4450 1550
Wire Wire Line
	4450 1650 4450 1550
Wire Wire Line
	4250 1550 4450 1550
$Comp
L power:GND #PWR?
U 1 1 60873AAE
P 4450 2050
AR Path="/60873AAE" Ref="#PWR?"  Part="1" 
AR Path="/60864F99/60873AAE" Ref="#PWR0106"  Part="1" 
AR Path="/60A567BE/60873AAE" Ref="#PWR0132"  Part="1" 
AR Path="/60A5EC98/60873AAE" Ref="#PWR?"  Part="1" 
AR Path="/60A67127/60873AAE" Ref="#PWR?"  Part="1" 
AR Path="/60A89C21/60873AAE" Ref="#PWR0132"  Part="1" 
AR Path="/60AC3F2C/60873AAE" Ref="#PWR0132"  Part="1" 
AR Path="/60ADE329/60873AAE" Ref="#PWR0141"  Part="1" 
AR Path="/60ADFCBC/60873AAE" Ref="#PWR0150"  Part="1" 
AR Path="/60AE15A4/60873AAE" Ref="#PWR0159"  Part="1" 
AR Path="/60AE2DA8/60873AAE" Ref="#PWR0168"  Part="1" 
F 0 "#PWR0168" H 4450 1800 50  0001 C CNN
F 1 "GND" H 4455 1877 50  0000 C CNN
F 2 "" H 4450 2050 50  0001 C CNN
F 3 "" H 4450 2050 50  0001 C CNN
	1    4450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2700 5150 2700
Wire Wire Line
	5100 2000 4950 2000
Wire Wire Line
	5650 2700 5450 2700
Wire Wire Line
	5500 2000 5650 2000
Wire Wire Line
	5300 1550 5300 1700
Wire Wire Line
	4950 1550 5300 1550
$Comp
L Device:C C?
U 1 1 60873ABA
P 4100 1550
AR Path="/60873ABA" Ref="C?"  Part="1" 
AR Path="/60864F99/60873ABA" Ref="C2"  Part="1" 
AR Path="/60A567BE/60873ABA" Ref="C12"  Part="1" 
AR Path="/60A5EC98/60873ABA" Ref="C?"  Part="1" 
AR Path="/60A67127/60873ABA" Ref="C?"  Part="1" 
AR Path="/60A89C21/60873ABA" Ref="C12"  Part="1" 
AR Path="/60AC3F2C/60873ABA" Ref="C12"  Part="1" 
AR Path="/60ADE329/60873ABA" Ref="C17"  Part="1" 
AR Path="/60ADFCBC/60873ABA" Ref="C22"  Part="1" 
AR Path="/60AE15A4/60873ABA" Ref="C27"  Part="1" 
AR Path="/60AE2DA8/60873ABA" Ref="C32"  Part="1" 
F 0 "C32" V 3848 1550 50  0000 C CNN
F 1 "470p" V 3939 1550 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 4138 1400 50  0001 C CNN
F 3 "~" H 4100 1550 50  0001 C CNN
	1    4100 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60873AC0
P 4450 1800
AR Path="/60873AC0" Ref="R?"  Part="1" 
AR Path="/60864F99/60873AC0" Ref="R5"  Part="1" 
AR Path="/60A567BE/60873AC0" Ref="R21"  Part="1" 
AR Path="/60A5EC98/60873AC0" Ref="R?"  Part="1" 
AR Path="/60A67127/60873AC0" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873AC0" Ref="R21"  Part="1" 
AR Path="/60AC3F2C/60873AC0" Ref="R21"  Part="1" 
AR Path="/60ADE329/60873AC0" Ref="R35"  Part="1" 
AR Path="/60ADFCBC/60873AC0" Ref="R49"  Part="1" 
AR Path="/60AE15A4/60873AC0" Ref="R63"  Part="1" 
AR Path="/60AE2DA8/60873AC0" Ref="R77"  Part="1" 
F 0 "R77" H 4520 1846 50  0000 L CNN
F 1 "10k" H 4520 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4380 1800 50  0001 C CNN
F 3 "~" H 4450 1800 50  0001 C CNN
	1    4450 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60873AC6
P 4800 1550
AR Path="/60873AC6" Ref="R?"  Part="1" 
AR Path="/60864F99/60873AC6" Ref="R7"  Part="1" 
AR Path="/60A567BE/60873AC6" Ref="R23"  Part="1" 
AR Path="/60A5EC98/60873AC6" Ref="R?"  Part="1" 
AR Path="/60A67127/60873AC6" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873AC6" Ref="R23"  Part="1" 
AR Path="/60AC3F2C/60873AC6" Ref="R23"  Part="1" 
AR Path="/60ADE329/60873AC6" Ref="R37"  Part="1" 
AR Path="/60ADFCBC/60873AC6" Ref="R51"  Part="1" 
AR Path="/60AE15A4/60873AC6" Ref="R65"  Part="1" 
AR Path="/60AE2DA8/60873AC6" Ref="R79"  Part="1" 
F 0 "R79" V 4593 1550 50  0000 C CNN
F 1 "1k" V 4684 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4730 1550 50  0001 C CNN
F 3 "~" H 4800 1550 50  0001 C CNN
	1    4800 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60873ACC
P 5650 2350
AR Path="/60873ACC" Ref="R?"  Part="1" 
AR Path="/60864F99/60873ACC" Ref="R11"  Part="1" 
AR Path="/60A567BE/60873ACC" Ref="R27"  Part="1" 
AR Path="/60A5EC98/60873ACC" Ref="R?"  Part="1" 
AR Path="/60A67127/60873ACC" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873ACC" Ref="R27"  Part="1" 
AR Path="/60AC3F2C/60873ACC" Ref="R27"  Part="1" 
AR Path="/60ADE329/60873ACC" Ref="R41"  Part="1" 
AR Path="/60ADFCBC/60873ACC" Ref="R55"  Part="1" 
AR Path="/60AE15A4/60873ACC" Ref="R69"  Part="1" 
AR Path="/60AE2DA8/60873ACC" Ref="R83"  Part="1" 
F 0 "R83" H 5720 2396 50  0000 L CNN
F 1 "2k2" H 5720 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 2350 50  0001 C CNN
F 3 "~" H 5650 2350 50  0001 C CNN
	1    5650 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60873AD2
P 5300 2700
AR Path="/60873AD2" Ref="C?"  Part="1" 
AR Path="/60864F99/60873AD2" Ref="C3"  Part="1" 
AR Path="/60A567BE/60873AD2" Ref="C13"  Part="1" 
AR Path="/60A5EC98/60873AD2" Ref="C?"  Part="1" 
AR Path="/60A67127/60873AD2" Ref="C?"  Part="1" 
AR Path="/60A89C21/60873AD2" Ref="C13"  Part="1" 
AR Path="/60AC3F2C/60873AD2" Ref="C13"  Part="1" 
AR Path="/60ADE329/60873AD2" Ref="C18"  Part="1" 
AR Path="/60ADFCBC/60873AD2" Ref="C23"  Part="1" 
AR Path="/60AE15A4/60873AD2" Ref="C28"  Part="1" 
AR Path="/60AE2DA8/60873AD2" Ref="C33"  Part="1" 
F 0 "C33" V 5048 2700 50  0000 C CNN
F 1 "1n" V 5139 2700 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 5338 2550 50  0001 C CNN
F 3 "~" H 5300 2700 50  0001 C CNN
	1    5300 2700
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 60873AD8
P 5300 1900
AR Path="/60873AD8" Ref="Q?"  Part="1" 
AR Path="/60864F99/60873AD8" Ref="Q1"  Part="1" 
AR Path="/60A567BE/60873AD8" Ref="Q2"  Part="1" 
AR Path="/60A5EC98/60873AD8" Ref="Q?"  Part="1" 
AR Path="/60A67127/60873AD8" Ref="Q?"  Part="1" 
AR Path="/60A89C21/60873AD8" Ref="Q2"  Part="1" 
AR Path="/60AC3F2C/60873AD8" Ref="Q2"  Part="1" 
AR Path="/60ADE329/60873AD8" Ref="Q3"  Part="1" 
AR Path="/60ADFCBC/60873AD8" Ref="Q4"  Part="1" 
AR Path="/60AE15A4/60873AD8" Ref="Q5"  Part="1" 
AR Path="/60AE2DA8/60873AD8" Ref="Q6"  Part="1" 
F 0 "Q6" V 5535 1900 50  0000 C CNN
F 1 "2N3904" V 5626 1900 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 5500 1825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 5300 1900 50  0001 L CNN
	1    5300 1900
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 60873ADE
P 6200 5500
AR Path="/60873ADE" Ref="U?"  Part="4" 
AR Path="/60864F99/60873ADE" Ref="U2"  Part="4" 
AR Path="/60A567BE/60873ADE" Ref="U4"  Part="4" 
AR Path="/60A5EC98/60873ADE" Ref="U?"  Part="4" 
AR Path="/60A67127/60873ADE" Ref="U?"  Part="4" 
AR Path="/60A89C21/60873ADE" Ref="U4"  Part="4" 
AR Path="/60AC3F2C/60873ADE" Ref="U4"  Part="4" 
AR Path="/60ADE329/60873ADE" Ref="U5"  Part="4" 
AR Path="/60ADFCBC/60873ADE" Ref="U6"  Part="4" 
AR Path="/60AE15A4/60873ADE" Ref="U7"  Part="4" 
AR Path="/60AE2DA8/60873ADE" Ref="U8"  Part="4" 
F 0 "U8" H 6200 5867 50  0000 C CNN
F 1 "TL074" H 6200 5776 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6150 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6250 5700 50  0001 C CNN
	4    6200 5500
	1    0    0    1   
$EndComp
Wire Wire Line
	5650 3750 5650 4100
$Comp
L Device:R R?
U 1 1 60873AE5
P 5650 4250
AR Path="/60873AE5" Ref="R?"  Part="1" 
AR Path="/60864F99/60873AE5" Ref="R12"  Part="1" 
AR Path="/60A567BE/60873AE5" Ref="R28"  Part="1" 
AR Path="/60A5EC98/60873AE5" Ref="R?"  Part="1" 
AR Path="/60A67127/60873AE5" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873AE5" Ref="R28"  Part="1" 
AR Path="/60AC3F2C/60873AE5" Ref="R28"  Part="1" 
AR Path="/60ADE329/60873AE5" Ref="R42"  Part="1" 
AR Path="/60ADFCBC/60873AE5" Ref="R56"  Part="1" 
AR Path="/60AE15A4/60873AE5" Ref="R70"  Part="1" 
AR Path="/60AE2DA8/60873AE5" Ref="R84"  Part="1" 
F 0 "R84" H 5580 4204 50  0000 R CNN
F 1 "10k" H 5580 4295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4250 50  0001 C CNN
F 3 "~" H 5650 4250 50  0001 C CNN
	1    5650 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60873AF2
P 5300 5950
AR Path="/60873AF2" Ref="R?"  Part="1" 
AR Path="/60864F99/60873AF2" Ref="R10"  Part="1" 
AR Path="/60A567BE/60873AF2" Ref="R26"  Part="1" 
AR Path="/60A5EC98/60873AF2" Ref="R?"  Part="1" 
AR Path="/60A67127/60873AF2" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873AF2" Ref="R26"  Part="1" 
AR Path="/60AC3F2C/60873AF2" Ref="R26"  Part="1" 
AR Path="/60ADE329/60873AF2" Ref="R40"  Part="1" 
AR Path="/60ADFCBC/60873AF2" Ref="R54"  Part="1" 
AR Path="/60AE15A4/60873AF2" Ref="R68"  Part="1" 
AR Path="/60AE2DA8/60873AF2" Ref="R82"  Part="1" 
F 0 "R82" H 5370 5996 50  0000 L CNN
F 1 "470k" H 5370 5905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5230 5950 50  0001 C CNN
F 3 "~" H 5300 5950 50  0001 C CNN
	1    5300 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60873AF8
P 4800 4650
AR Path="/60873AF8" Ref="R?"  Part="1" 
AR Path="/60864F99/60873AF8" Ref="R8"  Part="1" 
AR Path="/60A567BE/60873AF8" Ref="R24"  Part="1" 
AR Path="/60A5EC98/60873AF8" Ref="R?"  Part="1" 
AR Path="/60A67127/60873AF8" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873AF8" Ref="R24"  Part="1" 
AR Path="/60AC3F2C/60873AF8" Ref="R24"  Part="1" 
AR Path="/60ADE329/60873AF8" Ref="R38"  Part="1" 
AR Path="/60ADFCBC/60873AF8" Ref="R52"  Part="1" 
AR Path="/60AE15A4/60873AF8" Ref="R66"  Part="1" 
AR Path="/60AE2DA8/60873AF8" Ref="R80"  Part="1" 
F 0 "R80" V 5007 4650 50  0000 C CNN
F 1 "150k" V 4916 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4730 4650 50  0001 C CNN
F 3 "~" H 4800 4650 50  0001 C CNN
	1    4800 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60873AFE
P 4800 5600
AR Path="/60873AFE" Ref="R?"  Part="1" 
AR Path="/60864F99/60873AFE" Ref="R9"  Part="1" 
AR Path="/60A567BE/60873AFE" Ref="R25"  Part="1" 
AR Path="/60A5EC98/60873AFE" Ref="R?"  Part="1" 
AR Path="/60A67127/60873AFE" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873AFE" Ref="R25"  Part="1" 
AR Path="/60AC3F2C/60873AFE" Ref="R25"  Part="1" 
AR Path="/60ADE329/60873AFE" Ref="R39"  Part="1" 
AR Path="/60ADFCBC/60873AFE" Ref="R53"  Part="1" 
AR Path="/60AE15A4/60873AFE" Ref="R67"  Part="1" 
AR Path="/60AE2DA8/60873AFE" Ref="R81"  Part="1" 
F 0 "R81" V 5007 5600 50  0000 C CNN
F 1 "100k" V 4916 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4730 5600 50  0001 C CNN
F 3 "~" H 4800 5600 50  0001 C CNN
	1    4800 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60873B04
P 5300 6200
AR Path="/60873B04" Ref="#PWR?"  Part="1" 
AR Path="/60864F99/60873B04" Ref="#PWR0107"  Part="1" 
AR Path="/60A567BE/60873B04" Ref="#PWR0133"  Part="1" 
AR Path="/60A5EC98/60873B04" Ref="#PWR?"  Part="1" 
AR Path="/60A67127/60873B04" Ref="#PWR?"  Part="1" 
AR Path="/60A89C21/60873B04" Ref="#PWR0133"  Part="1" 
AR Path="/60AC3F2C/60873B04" Ref="#PWR0133"  Part="1" 
AR Path="/60ADE329/60873B04" Ref="#PWR0142"  Part="1" 
AR Path="/60ADFCBC/60873B04" Ref="#PWR0151"  Part="1" 
AR Path="/60AE15A4/60873B04" Ref="#PWR0160"  Part="1" 
AR Path="/60AE2DA8/60873B04" Ref="#PWR0169"  Part="1" 
F 0 "#PWR0169" H 5300 5950 50  0001 C CNN
F 1 "GND" H 5305 6027 50  0000 C CNN
F 2 "" H 5300 6200 50  0001 C CNN
F 3 "" H 5300 6200 50  0001 C CNN
	1    5300 6200
	1    0    0    -1  
$EndComp
Text GLabel 4400 4650 0    50   Input ~ 0
PWM_IN
Wire Wire Line
	5900 5600 5300 5600
Connection ~ 5300 5600
Wire Wire Line
	5300 5600 4950 5600
Wire Wire Line
	5300 4650 4950 4650
Connection ~ 5650 3750
$Comp
L Device:R R?
U 1 1 60873B1E
P 6800 5500
AR Path="/60873B1E" Ref="R?"  Part="1" 
AR Path="/60864F99/60873B1E" Ref="R14"  Part="1" 
AR Path="/60A567BE/60873B1E" Ref="R30"  Part="1" 
AR Path="/60A5EC98/60873B1E" Ref="R?"  Part="1" 
AR Path="/60A67127/60873B1E" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873B1E" Ref="R30"  Part="1" 
AR Path="/60AC3F2C/60873B1E" Ref="R30"  Part="1" 
AR Path="/60ADE329/60873B1E" Ref="R44"  Part="1" 
AR Path="/60ADFCBC/60873B1E" Ref="R58"  Part="1" 
AR Path="/60AE15A4/60873B1E" Ref="R72"  Part="1" 
AR Path="/60AE2DA8/60873B1E" Ref="R86"  Part="1" 
F 0 "R86" V 6593 5500 50  0000 C CNN
F 1 "10k" V 6684 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 5500 50  0001 C CNN
F 3 "~" H 6800 5500 50  0001 C CNN
	1    6800 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60873B24
P 7050 5750
AR Path="/60873B24" Ref="R?"  Part="1" 
AR Path="/60864F99/60873B24" Ref="R15"  Part="1" 
AR Path="/60A567BE/60873B24" Ref="R31"  Part="1" 
AR Path="/60A5EC98/60873B24" Ref="R?"  Part="1" 
AR Path="/60A67127/60873B24" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873B24" Ref="R31"  Part="1" 
AR Path="/60AC3F2C/60873B24" Ref="R31"  Part="1" 
AR Path="/60ADE329/60873B24" Ref="R45"  Part="1" 
AR Path="/60ADFCBC/60873B24" Ref="R59"  Part="1" 
AR Path="/60AE15A4/60873B24" Ref="R73"  Part="1" 
AR Path="/60AE2DA8/60873B24" Ref="R87"  Part="1" 
F 0 "R87" H 7120 5796 50  0000 L CNN
F 1 "5k6" H 7120 5705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6980 5750 50  0001 C CNN
F 3 "~" H 7050 5750 50  0001 C CNN
	1    7050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5500 6650 5500
$Comp
L power:GND #PWR?
U 1 1 60873B2B
P 7050 6000
AR Path="/60873B2B" Ref="#PWR?"  Part="1" 
AR Path="/60864F99/60873B2B" Ref="#PWR0110"  Part="1" 
AR Path="/60A567BE/60873B2B" Ref="#PWR0134"  Part="1" 
AR Path="/60A5EC98/60873B2B" Ref="#PWR?"  Part="1" 
AR Path="/60A67127/60873B2B" Ref="#PWR?"  Part="1" 
AR Path="/60A89C21/60873B2B" Ref="#PWR0134"  Part="1" 
AR Path="/60AC3F2C/60873B2B" Ref="#PWR0134"  Part="1" 
AR Path="/60ADE329/60873B2B" Ref="#PWR0143"  Part="1" 
AR Path="/60ADFCBC/60873B2B" Ref="#PWR0152"  Part="1" 
AR Path="/60AE15A4/60873B2B" Ref="#PWR0161"  Part="1" 
AR Path="/60AE2DA8/60873B2B" Ref="#PWR0170"  Part="1" 
F 0 "#PWR0170" H 7050 5750 50  0001 C CNN
F 1 "GND" H 7055 5827 50  0000 C CNN
F 2 "" H 7050 6000 50  0001 C CNN
F 3 "" H 7050 6000 50  0001 C CNN
	1    7050 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5500 7050 5500
Wire Wire Line
	5300 5600 5300 5800
Wire Wire Line
	5300 6100 5300 6200
Wire Wire Line
	7050 5600 7050 5500
Connection ~ 7050 5500
Wire Wire Line
	7050 5500 7150 5500
Wire Wire Line
	7050 6000 7050 5900
Wire Wire Line
	5300 4650 5300 5600
Wire Wire Line
	4400 4650 4650 4650
Wire Wire Line
	4700 3200 4950 3200
Wire Wire Line
	5000 3400 4850 3400
Wire Wire Line
	4850 3400 4850 3650
Wire Wire Line
	3600 3300 3500 3300
Wire Wire Line
	3500 3300 3500 3650
Wire Wire Line
	3750 2850 3600 2850
Wire Wire Line
	3600 2850 3600 3100
Wire Wire Line
	4050 2850 4200 2850
Wire Wire Line
	4200 2850 4200 3200
Wire Wire Line
	5900 5400 5650 5400
Wire Wire Line
	5650 5400 5650 4400
Wire Wire Line
	4950 2700 4950 3200
Connection ~ 4950 2700
Connection ~ 4950 3200
Wire Wire Line
	4950 3200 5000 3200
$Comp
L Device:R R?
U 1 1 60873B5B
P 2500 3100
AR Path="/60873B5B" Ref="R?"  Part="1" 
AR Path="/60864F99/60873B5B" Ref="R1"  Part="1" 
AR Path="/60A567BE/60873B5B" Ref="R18"  Part="1" 
AR Path="/60A5EC98/60873B5B" Ref="R?"  Part="1" 
AR Path="/60A67127/60873B5B" Ref="R?"  Part="1" 
AR Path="/60A89C21/60873B5B" Ref="R18"  Part="1" 
AR Path="/60AC3F2C/60873B5B" Ref="R18"  Part="1" 
AR Path="/60ADE329/60873B5B" Ref="R32"  Part="1" 
AR Path="/60ADFCBC/60873B5B" Ref="R46"  Part="1" 
AR Path="/60AE15A4/60873B5B" Ref="R60"  Part="1" 
AR Path="/60AE2DA8/60873B5B" Ref="R74"  Part="1" 
F 0 "R74" V 2293 3100 50  0000 C CNN
F 1 "4k7" V 2384 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 3100 50  0001 C CNN
F 3 "~" H 2500 3100 50  0001 C CNN
	1    2500 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 3550 2800 3650
$Comp
L power:GND #PWR?
U 1 1 60873B63
P 2800 3650
AR Path="/60873B63" Ref="#PWR?"  Part="1" 
AR Path="/60864F99/60873B63" Ref="#PWR0111"  Part="1" 
AR Path="/60A567BE/60873B63" Ref="#PWR0135"  Part="1" 
AR Path="/60A5EC98/60873B63" Ref="#PWR?"  Part="1" 
AR Path="/60A67127/60873B63" Ref="#PWR?"  Part="1" 
AR Path="/60A89C21/60873B63" Ref="#PWR0135"  Part="1" 
AR Path="/60AC3F2C/60873B63" Ref="#PWR0135"  Part="1" 
AR Path="/60ADE329/60873B63" Ref="#PWR0144"  Part="1" 
AR Path="/60ADFCBC/60873B63" Ref="#PWR0153"  Part="1" 
AR Path="/60AE15A4/60873B63" Ref="#PWR0162"  Part="1" 
AR Path="/60AE2DA8/60873B63" Ref="#PWR0171"  Part="1" 
F 0 "#PWR0171" H 2800 3400 50  0001 C CNN
F 1 "GND" H 2805 3477 50  0000 C CNN
F 2 "" H 2800 3650 50  0001 C CNN
F 3 "" H 2800 3650 50  0001 C CNN
	1    2800 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60873B69
P 2800 3400
AR Path="/60873B69" Ref="C?"  Part="1" 
AR Path="/60864F99/60873B69" Ref="C1"  Part="1" 
AR Path="/60A567BE/60873B69" Ref="C11"  Part="1" 
AR Path="/60A5EC98/60873B69" Ref="C?"  Part="1" 
AR Path="/60A67127/60873B69" Ref="C?"  Part="1" 
AR Path="/60A89C21/60873B69" Ref="C11"  Part="1" 
AR Path="/60AC3F2C/60873B69" Ref="C11"  Part="1" 
AR Path="/60ADE329/60873B69" Ref="C16"  Part="1" 
AR Path="/60ADFCBC/60873B69" Ref="C21"  Part="1" 
AR Path="/60AE15A4/60873B69" Ref="C26"  Part="1" 
AR Path="/60AE2DA8/60873B69" Ref="C31"  Part="1" 
F 0 "C31" V 2548 3400 50  0000 C CNN
F 1 "100n" V 2639 3400 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 2838 3250 50  0001 C CNN
F 3 "~" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
Connection ~ 6350 3750
Wire Wire Line
	6350 3750 7050 3750
Wire Wire Line
	7050 3950 7050 4200
Wire Wire Line
	7050 4200 7650 4200
Wire Wire Line
	7650 4200 7650 3850
Wire Wire Line
	2650 3100 2800 3100
Wire Wire Line
	2800 3250 2800 3100
Connection ~ 2800 3100
Wire Wire Line
	2800 3100 2950 3100
Connection ~ 3600 3100
Connection ~ 4200 3200
Connection ~ 7650 3850
Text GLabel 4400 5600 0    50   Input ~ 0
PW_POT
Wire Wire Line
	4400 5600 4650 5600
$Comp
L Amplifier_Operational:TL074 U?
U 3 1 60873A65
P 7350 3850
AR Path="/60873A65" Ref="U?"  Part="3" 
AR Path="/60864F99/60873A65" Ref="U2"  Part="3" 
AR Path="/60A567BE/60873A65" Ref="U4"  Part="3" 
AR Path="/60A5EC98/60873A65" Ref="U?"  Part="3" 
AR Path="/60A67127/60873A65" Ref="U?"  Part="3" 
AR Path="/60A89C21/60873A65" Ref="U4"  Part="3" 
AR Path="/60AC3F2C/60873A65" Ref="U4"  Part="3" 
AR Path="/60ADE329/60873A65" Ref="U5"  Part="3" 
AR Path="/60ADFCBC/60873A65" Ref="U6"  Part="3" 
AR Path="/60AE15A4/60873A65" Ref="U7"  Part="3" 
AR Path="/60AE2DA8/60873A65" Ref="U8"  Part="3" 
F 0 "U8" H 7350 4217 50  0000 C CNN
F 1 "TL074" H 7350 4126 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 7300 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7400 4050 50  0001 C CNN
	3    7350 3850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U2
U 5 1 60926AFD
P 10000 5550
AR Path="/60864F99/60926AFD" Ref="U2"  Part="5" 
AR Path="/60A567BE/60926AFD" Ref="U4"  Part="5" 
AR Path="/60A5EC98/60926AFD" Ref="U?"  Part="5" 
AR Path="/60A67127/60926AFD" Ref="U?"  Part="5" 
AR Path="/60A89C21/60926AFD" Ref="U4"  Part="5" 
AR Path="/60AC3F2C/60926AFD" Ref="U4"  Part="5" 
AR Path="/60ADE329/60926AFD" Ref="U5"  Part="5" 
AR Path="/60ADFCBC/60926AFD" Ref="U6"  Part="5" 
AR Path="/60AE15A4/60926AFD" Ref="U7"  Part="5" 
AR Path="/60AE2DA8/60926AFD" Ref="U8"  Part="5" 
F 0 "U8" H 9958 5596 50  0000 L CNN
F 1 "TL074" H 9958 5505 50  0000 L CNN
F 2 "" H 9950 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10050 5750 50  0001 C CNN
	5    10000 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0112
U 1 1 60929D9D
P 9900 5250
AR Path="/60864F99/60929D9D" Ref="#PWR0112"  Part="1" 
AR Path="/60A567BE/60929D9D" Ref="#PWR0136"  Part="1" 
AR Path="/60A5EC98/60929D9D" Ref="#PWR?"  Part="1" 
AR Path="/60A67127/60929D9D" Ref="#PWR?"  Part="1" 
AR Path="/60A89C21/60929D9D" Ref="#PWR0136"  Part="1" 
AR Path="/60AC3F2C/60929D9D" Ref="#PWR0136"  Part="1" 
AR Path="/60ADE329/60929D9D" Ref="#PWR0145"  Part="1" 
AR Path="/60ADFCBC/60929D9D" Ref="#PWR0154"  Part="1" 
AR Path="/60AE15A4/60929D9D" Ref="#PWR0163"  Part="1" 
AR Path="/60AE2DA8/60929D9D" Ref="#PWR0172"  Part="1" 
F 0 "#PWR0172" H 9900 5100 50  0001 C CNN
F 1 "+12V" H 9915 5423 50  0000 C CNN
F 2 "" H 9900 5250 50  0001 C CNN
F 3 "" H 9900 5250 50  0001 C CNN
	1    9900 5250
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0113
U 1 1 6092AB39
P 9900 5850
AR Path="/60864F99/6092AB39" Ref="#PWR0113"  Part="1" 
AR Path="/60A567BE/6092AB39" Ref="#PWR0137"  Part="1" 
AR Path="/60A5EC98/6092AB39" Ref="#PWR?"  Part="1" 
AR Path="/60A67127/6092AB39" Ref="#PWR?"  Part="1" 
AR Path="/60A89C21/6092AB39" Ref="#PWR0137"  Part="1" 
AR Path="/60AC3F2C/6092AB39" Ref="#PWR0137"  Part="1" 
AR Path="/60ADE329/6092AB39" Ref="#PWR0146"  Part="1" 
AR Path="/60ADFCBC/6092AB39" Ref="#PWR0155"  Part="1" 
AR Path="/60AE15A4/6092AB39" Ref="#PWR0164"  Part="1" 
AR Path="/60AE2DA8/6092AB39" Ref="#PWR0173"  Part="1" 
F 0 "#PWR0173" H 9900 5950 50  0001 C CNN
F 1 "-12V" H 9915 6023 50  0000 C CNN
F 2 "" H 9900 5850 50  0001 C CNN
F 3 "" H 9900 5850 50  0001 C CNN
	1    9900 5850
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 609307F0
P 9650 5600
AR Path="/609307F0" Ref="C?"  Part="1" 
AR Path="/60864F99/609307F0" Ref="C5"  Part="1" 
AR Path="/60A567BE/609307F0" Ref="C15"  Part="1" 
AR Path="/60A5EC98/609307F0" Ref="C?"  Part="1" 
AR Path="/60A67127/609307F0" Ref="C?"  Part="1" 
AR Path="/60A89C21/609307F0" Ref="C15"  Part="1" 
AR Path="/60AC3F2C/609307F0" Ref="C15"  Part="1" 
AR Path="/60ADE329/609307F0" Ref="C20"  Part="1" 
AR Path="/60ADFCBC/609307F0" Ref="C25"  Part="1" 
AR Path="/60AE15A4/609307F0" Ref="C30"  Part="1" 
AR Path="/60AE2DA8/609307F0" Ref="C35"  Part="1" 
F 0 "C35" V 9398 5600 50  0000 C CNN
F 1 "100n" V 9489 5600 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 9688 5450 50  0001 C CNN
F 3 "~" H 9650 5600 50  0001 C CNN
	1    9650 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5450 9650 5250
Wire Wire Line
	9650 5250 9900 5250
Connection ~ 9900 5250
Wire Wire Line
	9650 5750 9650 5850
Wire Wire Line
	9650 5850 9900 5850
Connection ~ 9900 5850
Text HLabel 7750 3850 2    50   Input ~ 0
RAMP_OUT
Text HLabel 7150 5500 2    50   Input ~ 0
PULSE_OUT
Wire Wire Line
	2250 3100 2350 3100
Text HLabel 2250 3100 0    50   Input ~ 0
RANGE_PWM
Text HLabel 3650 1550 0    50   Input ~ 0
RESET
$EndSCHEMATC
