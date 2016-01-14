# sensors2csv
Turns raw data from the sensors command into a CSV file complete with timestamp and log rotation

# Input Data Format
Decide whether the switch ``-u`` shall be used or not. See below.

```
$ sensors
coretemp-isa-0000
Adapter: ISA adapter
Core 0:       +28.0°C  (crit = +100.0°C)
Core 1:       +29.0°C  (crit = +100.0°C)

w83627dhg-isa-0290
Adapter: ISA adapter
Vcore:        +0.87 V  (min =  +0.75 V, max =  +1.21 V)
+12V:        +12.10 V  (min = +11.42 V, max = +12.58 V)
Avcc:         +3.34 V  (min =  +2.98 V, max =  +3.63 V)
+3.3V:        +3.34 V  (min =  +2.98 V, max =  +3.63 V)
+5V:          +5.00 V  (min =  +4.76 V, max =  +5.24 V)
Vdimm:        +1.51 V  (min =  +1.42 V, max =  +1.58 V)
PCH:          +1.07 V  (min =  +1.00 V, max =  +1.10 V)
3VSB:         +3.36 V  (min =  +2.98 V, max =  +3.63 V)
Vbat:         +3.22 V  (min =  +2.70 V, max =  +3.63 V)
DIMM temp:    +22.0°C  (high = +80.0°C, hyst = +75.0°C)  sensor = CPU diode
VR temp:      +24.0°C  (high = +80.0°C, hyst = +75.0°C)  sensor = CPU diode

```
VS
```
$ sensors -u | grep input
  temp2_input: 28.000
  temp3_input: 29.000
  in0_input: 0.880
  in1_input: 12.192
  in2_input: 3.392
  in3_input: 3.392
  in4_input: 5.120
  in5_input: 1.504
  in6_input: 1.088
  in7_input: 3.392
  in8_input: 3.264
  temp1_input: 31.000
  temp3_input: 32.500
```

# Output Data Format
Output must be in plain CSV:
```
1450311137,28.5,40,28,58,42,43,42,37,39,10,32.500
```
