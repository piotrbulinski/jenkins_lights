import serial

# setup port
ser = serial.Serial('/dev/tty.usbserial-00002006', 57600, timeout=1)

# setup ports as output
setup_ports = '\x1bSD00'
ser.write(setup_ports)

# 0 - none
ser.write('\x1b1WD00')

# 1 - green
ser.write('\x1b1WD01')

# 2 - yellow
ser.write('\x1b1WD02')

# 4 - red
ser.write('\x1b1WD04')
