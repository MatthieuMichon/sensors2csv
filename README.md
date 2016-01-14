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
Vcore:        +0.88 V  (min =  +0.75 V, max =  +1.21 V)
12 V:        +12.19 V  (min = +11.42 V, max = +12.58 V)
3.3 V (in2):  +3.39 V  (min =  +3.14 V, max =  +3.47 V)
3.3 V (in3):  +3.39 V  (min =  +3.14 V, max =  +3.47 V)
5 V:          +5.12 V  (min =  +4.76 V, max =  +5.24 V)
1.5 V:        +1.50 V  (min =  +1.42 V, max =  +1.58 V)
1.05 V:       +1.09 V  (min =  +1.00 V, max =  +1.10 V)
3.3 V (in7):  +3.39 V  (min =  +3.14 V, max =  +3.47 V)
3.3 V (in8):  +3.26 V  (min =  +3.14 V, max =  +3.47 V)
DIMM temp:    +32.0°C  (high = +40.0°C, hyst = +35.0°C)  sensor = CPU diode
VR temp:      +32.5°C  (high = +40.0°C, hyst = +35.0°C)  sensor = CPU diode
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
