nsmod usbserial &> /dev/null
insmod ftdi_sio &> /dev/null

stty -F /dev/ttyUSB0 speed 57600 &> /dev/null

echo -en "\x1bSD00\x1b1WD02" > /dev/ttyUSB0

while true; do
  rm -f xml
  wget -q http://build.strato.castlabs.com/jenkins/view/Server/api/xml

  RES_ANIME=`grep "_anime<" xml`
  RES_RED=`grep ">red<" xml`

  if [ "$RES_ANIME" ]; then
    echo "busy"
    echo -en "\x1b1WD02" > /dev/ttyUSB0
  elif [ "$RES_RED" ]; then
    echo "error"
    echo -en "\x1b1WD04" > /dev/ttyUSB0
  else
    echo "ok"
    echo -en "\x1b1WD01" > /dev/ttyUSB0
  fi
  sleep 1
done
