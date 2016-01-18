#! /usr/bin/env sh

echo "### Install"


# Do not overwrite an already existing /usr/bin/sensors file

if [ -f /usr/bin/sensors ]; then
	echo "/usr/bin/sensors already exists: aborting"
	exit 1
fi


# Create a "sensors" script stub reproducing a typical output

cat>>/usr/bin/sensors <<EOF
coretemp-isa-0000
Adapter: ISA adapter
Core 0:
  temp2_input: 15.000
  temp2_crit: 100.000
  temp2_crit_alarm: 0.000
Core 1:
  temp3_input: 13.000
  temp3_crit: 100.000
  temp3_crit_alarm: 0.000

w83627dhg-isa-0290
Adapter: ISA adapter
Vcore:
  in0_input: 0.872
  in0_min: 0.752
  in0_max: 1.208
  in0_alarm: 0.000
+12V:
  in1_input: 12.192
  in1_min: 11.424
  in1_max: 12.576
  in1_alarm: 0.000
Avcc:
  in2_input: 3.360
  in2_min: 2.976
  in2_max: 3.632
  in2_alarm: 0.000
+3.3V:
  in3_input: 3.344
  in3_min: 2.976
  in3_max: 3.632
  in3_alarm: 0.000
+5V:
  in4_input: 5.000
  in4_min: 4.760
  in4_max: 5.240
  in4_alarm: 0.000
Vdimm:
  in5_input: 1.512
  in5_min: 1.424
  in5_max: 1.576
  in5_alarm: 0.000
PCH:
  in6_input: 1.072
  in6_min: 1.000
  in6_max: 1.104
  in6_alarm: 0.000
3VSB:
  in7_input: 3.360
  in7_min: 2.976
  in7_max: 3.632
  in7_alarm: 0.000
Vbat:
  in8_input: 3.216
  in8_min: 2.704
  in8_max: 3.632
  in8_alarm: 0.000
DIMM temp:
  temp1_input: 19.000
  temp1_max: 80.000
  temp1_max_hyst: 75.000
  temp1_alarm: 0.000
  temp1_type: 1.000
  temp1_offset: 0.000
VR temp:
  temp3_input: 21.500
  temp3_max: 80.000
  temp3_max_hyst: 75.000
  temp3_alarm: 0.000
  temp3_type: 1.000
  temp3_offset: 0.000

EOF
chmod +x /usr/bin/sensors
