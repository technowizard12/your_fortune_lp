Your Fortune
=======================

A program which, using the fortune_gem rubygem, generates fortunes to be printed on a BERG Cloud [Little Printer](http://bergcloud.com/littleprinter/). It is possible for the same fortune to be generated multiple times, but not within the same minute. This code is based on [lp_publication_hello_world](https://github.com/bergcloud/lp_publication_hello_world), and it was awfully poor form of me not to fork it then modify it.

She runs real good on heroku, by the way.

*Check it out on [BERG Cloud Remote](http://remote.bergcloud.com/publications/169)*

*Version: 1.0.0*

To look at the generator, see [the heroku edition](http://yourfortune.herokuapp.com/edition/)

Things of Note
===============

* The only routes written are /edition/ and /sample/, because those were the only ones necessary. I'm sorry if you were attached. They're gone now.
* There is no server at the index. This is entirely a backend endeavor, for now. I'll fix that in the next update.
* The estimated average cruising airspeed of an unladen European swallow is 25 miles per hour, according to WolframAlpha.
Dependecies
===============
* sinatra
   ```ruby
   gem install 'sinatra'
   ```
   or, for bundler
   ```ruby
   gem 'sinatra'
   ```
* fortune_gem version 0.0.5
   ```ruby
   gem install 'fortune_gem' --version '0.0.5'
   ```
   or, for bundler

   ```ruby
   gem 'fortune_gem', '= 0.0.5'
   ```
* a good sense of humor


License
===============
This code is released under a modified version of the wtfpl v 2.0, the wtf(wabea)pl v 2.0


DO WHAT THE FUCK YOU WANT TO (WITH A BIT EXTRA ADDED) PUBLIC LICENSE 

Version 1.0, June 2013

 Copyright (C) 2013 Simon David Orr, sorr@willamette.edu

            DO WHAT THE FUCK YOU WANT TO (WITH A BIT EXTRA ADDED) PUBLIC LICENSE

   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 

  0. You just DO WHAT THE FUCK YOU WANT TO, so long as you include the original author's name, (Simon D. Orr), as attribution in your documentation or commenting.
