require 'net/http'
require 'sinatra'

get '*' do
  path = request.path_info
  if path.start_with?("/service/a/b/")
    b_path = "/service/a/b/".match(/\A\/service\/a\/b\/(.*)\z/)[1]
    url = "http://localhost/service/b"

    resp = Net::HTTP.get_response(URI.parse(url))
    begin
      resp.value
      return resp.body
    rescue => e
      halt e.message + "\n"
    end
  end

  "Hello from behind Envoy (service #{ENV['SERVICE_NAME']})! hostname: #{Socket.gethostname} resolvedhostname: #{TCPSocket.gethostbyname(Socket.gethostname)[3]}\n"
end

