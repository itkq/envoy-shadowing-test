require 'sinatra'

get '*' do
  "Hello from behind Envoy (service #{ENV['SERVICE_NAME']})! hostname: #{Socket.gethostname} resolvedhostname: #{TCPSocket.gethostbyname(Socket.gethostname)[3]}\n"
end

