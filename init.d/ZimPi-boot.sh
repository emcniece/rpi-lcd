#! /bin/sh
### BEGIN INIT INFO
# Provides:          ZimPi-boot.sh
# Required-Start:    $network
# Required-Stop:     
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Sets default LCD messages
### END INIT INFO

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin

#. /lib/init/vars.sh
#. /lib/lsb/init-functions
# If you need to source some other scripts, do it here

case "$1" in
  start)
    #log_begin_msg "Initializing ZimPi LCD Display"
    bash /root/rpi-lcd/bash/_init.sh
    exit 0
    ;;
  *)
    echo "Usage: /etc/init.d/ZimPi-boot.sh {start}"
    exit 1
    ;;
esac
