#!/bin/sh

_IP=$(hostname -I) || true
if [ "$_IP" ]; then
  # Haven't found a graceful way of detecting pwd yet
  #pushd `dirname $0` > /dev/null
  #SCRIPTPATH=`pwd -P`
  #popd > /dev/null

  #python $SCRIPTPATH/repeater "IP Address:" $_IP
  python /root/rpi-lcd/scripts/repeater "IP Address:" $_IP
else
  python /root/rpi-lcd/scripts/repeater "IP Address:" "failed"
fi

exit 0
