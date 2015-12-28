#Raspberry Pi I2C LCD Library


##Usage

- Wire rPi/LCD as needed (I2C0, I2C1...)
- Clone into local directory, cd
- Test I2C connectivity: `i2cdetect -y 1`
    - Table should dump with attached devices
- `python example.py`


##Instructions for setting up a I2C LCD on an rPi inside Zim

The rPi scripts must be installed at /root/rpi-lcd/ because I haven't found a nice way to detect
execution directory during startup bash scripts.

**In rPi console:**

- clone https://github.com/emcniece/rpi-lcd
    - `sudo su -`
    - `cd`
    - `git clone https://github.com/emcniece/rpi-lcd.git`
    - `chmod +x rpi-lcd/repeater`
- edit ~/.bash_aliases
    - `cd`
    - `alias rpilcd="python /root/rpi-lcd/repeater"`
    - `source .bash_aliases`
- Install:
    - `cp /root/rpi-lcd/init.d/ZimPi-LCD.sh /etc/init.d/ZimPi-LCD.sh`
    - `update-rc.d ZimPi-LCD.sh defaults`
    - `cp /root/rpi-lcd/init.d/ZimPi-boot.sh /etc/init.d/ZimPi-boot.sh`
    - `update-rc.d ZimPi-boot.sh defaults`
    - `cp /root/rpi-lcd/init.d/ZimPi-button.sh /etc/init.d/ZimPi-button.sh`
    - `update-rc.d ZimPi-button.sh defaults`


##Power Button

The power button (/init.d/ZimPi-button.sh) is designed to accommodate a momentary SPST on the far right GPIO pins. For the rPi B r2 this is GPIO7 - if you need this to be a different pin, edit this file before copying to `/etc/init.d/ZimPi-button.sh` and installing with update-rc.d.

