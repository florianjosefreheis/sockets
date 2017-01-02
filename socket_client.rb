require 'socket'

socket = TCPSocket.new('google.com', 80)

# if connection cant be established then you will get a Errno::ECONNREFUSED error

socket.write "GET / HTTP/1.1"
socket.write "\r\n\r\n"

# You need to pass the amount of bytes that you want to read from the socket as a parameter.
puts socket.recv(10000)
