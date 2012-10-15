import serial
ser = serial.Serial('/dev/tty.usbserial-00002006', 57600, timeout=1)
setup_ports = '\x1bSD00'
ser.write(setup_ports)
ser.write('\x1b1WDFF')
ser.write('\x1b1WD00')

