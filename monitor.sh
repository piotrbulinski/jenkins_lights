#!/bin/sh

sleep 5

T=/usr/local/root/xml
P=/dev/ttyUSB0

/sbin/insmod usbserial &> /dev/null
/sbin/insmod ftdi_sio &> /dev/null

/bin/stty -F $P speed 57600 &> /dev/null

/bin/echo -en "\x1bSD00\x1b1WD02" > $P

while true; do
  /bin/rm -f $T
  /usr/bin/wget -q http://example.com/jenkins/view/TestView/api/xml

  RES_ANIME=`/bin/grep "_anime<" $T`
  RES_RED=`/bin/grep ">red<" $T`

  if [ "$RES_ANIME" ]; then
    /bin/echo -en "\x1b1WD02" > $P
  elif [ "$RES_RED" ]; then
    /bin/echo -en "\x1b1WD04" > $P
  else
    /bin/echo -en "\x1b1WD01" > $P
  fi
  sleep 2
done
