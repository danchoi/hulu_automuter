# Hulu Automuter


Hulu Automuter automatically mutes your computer while a commercial is playing
at Hulu.com.

[screenshots]

Benefits:

* You won't have to manually toggle your sound to mute those awesome commercials
* When ads are finished, the sound comes back on right on cue 
* Hulu ads are often miscalibrated and way too loud -- but not with the Automuter
* If you see an ad that looks interesting, just unmute your volume
* Hulu still gets their ad impressions registered: it's as if you paid attention to them


## Prerequisites

* Ruby 1.8.6 or higher (developed on Ruby 1.9.2)
* OS X, or Linux with `amixer` installed
* a web browser you can configure to use an HTTP proxy (e.g. Chrome, Firefox)


## Install

Open a terminal, and type the following:

    gem install hulu-automuter

Confirm that the installation succeeded by typing `hulu-automuter -h`.  If you
get an error message saying that hulu-automuter is missing, then you probably
have a `PATH` issue. Try one of these workarounds:

* Put the directory where Rubygems installs executables on your `PATH`
* Try installing with `sudo gem install hulu-automuter`

To upgrade Hulu Automuter to a newer version, just repeat the installation procedure.

**Mac Wrapper App:** Some people have requested a Mac OS X wrapper app for
this, for users who are intimidated by the Unix command line. This wrapper app
should be available by the end of this week, and it will be free.

## Usage

    hulu-automuter [ -p port ]

    Options:

        -p [port]   proxy port to use (default: 8123)
        -v          print version number

To use hulu-automuter, you need to configure the web browser you want to use
for watching Hulu to use hulu-automuter as its HTTP proxy.

Configure the HTTP proxy setting in your web browser's network proxy preferences
to localhost:proxy-port.

For example, if you want to use the default, you should set your browser to use
a HTTP proxy at localhost:8123.

Then you can start hulu-automuter and go to hulu.com in your configured web
browser.

Press `CTRL-c` to stop hulu-automuter.

## For Linux Audio

On Linux, the default amixer mute command is 

    amixer set Master mute

This will probbaly work if you use your computer's speakers or headphone
jack. If you use USB speakers, you may need to change this default by 
setting the AUTOMUTE_COMMAND environment variable.

    export AUTOMUTE_COMMAND="amixer -c 1 set PCM mute"
    hulu-automuter


## Tips

If you don't want to keep changing your web browser proxy settings manually
when you want to use Hulu Automuter and then return to normal web
browsing, try one of these tips:

* See if your browser or your OS has a "Create Location" feature that lets you
  save your HTTP proxy configurations as "Locations" that you can choose from a drop-down.
* Use one web browser program for general web browsing, and another web browser 
  for HTTP proxying.  Hulu Automuter is not the only proxy program you may want
  to use.  [Polipo][polipo], [Tor][tor], and [Privoxy][privoxy] are others.

[tor]: https://www.torproject.org/
[polipo]: http://www.pps.jussieu.fr/~jch/software/polipo/
[privoxy]: http://www.privoxy.org/

There are scripts and extensions out there that let you change your HTTP proxy
settings more easily.

* [Proxy Switchy][switchy] for Google Chrome

[switchy]: https://chrome.google.com/webstore/detail/caehdcpeofiiigpdhbabniblemipncjj

If you know of more, feel free to let me know, or add it to the
[wiki](https://github.com/danchoi/hulu_automuter/wiki).


## Is it unfair to Hulu?

A good question. 

Let me point you to a [blog post by Doc Searls][doc] on the topic.

[doc]:http://blogs.law.harvard.edu/doc/2007/08/09/looking-toward-life-beyond-advertising/

Being forced to watch ads you aren't interested in degrades the whole
experience of watching a good TV show or movie.  It's an wasteful use
of everyone's time and mental bandwith.

We need a new system.  I would rather pay per view or donate money directly to
the shows I enjoy, if Hulu gave that option.  


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


