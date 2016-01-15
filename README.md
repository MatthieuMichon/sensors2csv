# sensors2csv
Turns raw data from the sensors command into a CSV file complete with timestamp and log rotation

# Input Data Format
This script collects the output of the ``sensors`` program.


# Output Data Format
Output is in plain CSV:

```
$ sudo sensors2csv 
1452893077,19.000,17.000,0.872,12.192,3.344,3.344,5.000,1.512,1.072,3.360,3.216,23.000,25.000
```

The first field represents the eopch time and the rest temperatures or voltages depending on the hardware / software configuration.
