# YottaRuby-Gitpod

Gitpod environment for development with Lua and YottaDB

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/RamSailopal/YottaRuby-Gitpod)

Once the environment has provisioned fully, four windows will open at the bottom of the screen.

The first window can be ignored, the second window will give access to the YottaDB environment, the third access to a command line to run Ruby code.

![Alt text](Gitpod-Ruby.JPG?raw=true "Gitpod")

A simple test code example is stored in the code folder:

    require 'mg_ruby'
    mg_ruby = MG_RUBY.new()
    mg_ruby.m_set_host('localhost', 7042, '', '')
    mg_ruby.m_set("^TEST", "1", "Testing")
    res = mg_ruby.m_get("^TEST", "1")
    puts res.inspect

 
This can be run in the third window with:

    ruby test.rb
    
The code performs the following equivalent in M:

    S ^TEST("1")="Testing"
    
This can further be seen by running the following in the second window:

    YDB>D ^%G

    Output device: <terminal>:

    List ^TEST
    ^TEST(1)="Testing"
     
 # Further Coding Reference
 
 https://github.com/chrisemunt/mg_ruby
    



