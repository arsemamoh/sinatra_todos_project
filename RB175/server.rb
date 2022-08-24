require "socket"

server = TCPServer.new("localhost", 3003) # Instantiates a new TCPServer object with hostname - localhost and port - 3003
loop do # start loop
    client = server.accept # accepts incoming connection and starts to listen to the TCPServer object and returns a TCPSocket object - client socket - set it to the variable client
    
    request_line = client.gets #gets is like the gets method you use to get input from the command-line, except that the input is the data received from a network request
    next if !request_line || request_line =~ /favicon/
    puts request_line # outputs data to the commandline
    
    client.puts "HTTP/1.1 200/OK"
    client.puts "Content-Type: text/plain\r\n\r\n"
    client.puts # outputs text
    client.puts request_line    
    client.close
end