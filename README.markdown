# Hulu Automuter


Hulu Automuter automatically mutes your computer while a commercial is playing
at Hulu.com.

[screenshots]

Benefits:

* You won't have to manually toggle your sound to mute those darn commercials
* The sound comes back on right on cue
* Hulu still gets their ad impressions registered: it's as if you paid attention to them


## Prerequisites

* Ruby 1.8.6 or higher (developed on Ruby 1.9.2)
* OS X or Linux with `amixer` installed
* a web browser you can configure to use an HTTP proxy (e.g. Chrome, Firefox)


## Install

    gem install hulu-automuter

If you get an error message saying that hulu-automuter is missing, then you
probably have a `PATH` issue. Try one of these workarounds:

* Put the directory where Rubygems installs executables on your `PATH`
* Try installing with `sudo gem install hulu-automuter`

To upgrade Hulu Automuter to a newer version, just repeat the installation procedure.

## Usage

    hulu-automuter [ -p port ]

    Options:

        -p [port]   proxy port to use (default: 8123)
        -v          print version number

To use hulu-automuter, you need to configure the web browser you want to use
for watching Hulu to use hulu-automuter as its HTTP proxy.

Configure the HTTP proxy setting in your web browser network proxy preferences
to localhost:proxy-port.

For example, if you want to use the default, you should set your browser to use
a HTTP proxy at localhost:8123.

Then you can start hulu-automuter and go to hulu.com in your configured web
browser.

Press `CTRL-c` to stop hulu-automuter.


## Bug reports and feature requests

Please submit these at either of these places:

* <https://github.com/danchoi/hulu_automuter/issues>
* <http://groups.google.com/group/hulu_automuter-users>


## About the developer

My name is Daniel Choi. I specialize in Ruby, Rails, MySQL, PostgreSQL, and iOS
development. I am based in Cambridge, Massachusetts, USA, and the little
software company I run with Hoony Youn is called [Kaja Software](http://kajasoftware.com). 

* Company Email: info@kajasoftware.com
* Twitter: [@danchoi][twitter] 
* Personal Email: dhchoi@gmail.com  
* My Homepage: <http://danielchoi.com/software>

[twitter]:http://twitter.com/#!/danchoi


