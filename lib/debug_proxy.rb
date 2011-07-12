# Hulu Automuter
# by Daniel Choi <dhchoi@gmail.com>
# License: MIT License (c) 2011 Daniel Choi

port = 8123
require 'webrick/httpproxy'

proxyproc = Proc.new{|req,res| 
  puts req.path
  nil
}
#$stderr = File.new('/dev/null', 'w')

s = WEBrick::HTTPProxyServer.new(:Port => port, 
                                 :BindAddress => '0.0.0.0',
                                 :RequestCallback => proxyproc)
trap("INT"){s.shutdown}
puts "starting"
s.start

