#Raspberry Pi I2C LCD Library

##Usage

- Wire rPi/LCD as needed (I2C0, I2C1...)
- Clone into local directory, cd
- Test I2C connectivity: `i2cdetect -y 1`
    - Table should dump with attached devices
- `python example.py`