# Hulu Automuter
# by Daniel Choi <dhchoi@gmail.com>
# License: MIT License (c) 2011 Daniel Choi

port = 8123
require 'webrick/httpproxy'
require 'timeout'


puts RUBY_VERSION
module WEBrick
  class HTTPRequest
    def read_request_line(socket)
      @request_line = read_line(socket, 2048) if socket
      if @request_line.bytesize >= 2048 and @request_line[-1, 1] != LF
        raise HTTPStatus::RequestURITooLarge
      end
      @request_time = Time.now
      raise HTTPStatus::EOFError unless @request_line
      if /^(\S+)\s+(\S++)(?:\s+HTTP\/(\d+\.\d+))?\r?\n/mo =~ @request_line
        @request_method = $1
        @unparsed_uri   = $2
        @http_version   = HTTPVersion.new($3 ? $3 : "0.9")
      else
        rl = @request_line.sub(/\x0d?\x0a\z/o, '')
        raise HTTPStatus::BadRequest, "bad Request-Line `#{rl}'."
      end
    end
  end
end

proxyproc = Proc.new{|req,res| 
  puts req.path
  nil
}
#$stderr = File.new('/dev/null', 'w')

s = WEBrick::HTTPProxyServer.new(:Port => port, 
                                 :BindAddress => '0.0.0.0',
                                 :RequestCallback => proxyproc)
trap("INT"){
  begin
    Timeout::timeout(10) do 
      s.shutdown
    end
  rescue
    puts "Exited abnormally"
  end
}
puts "starting"
s.start

