unicolor
====

Colorize an object uniquely!

Install
----

    $ gem install unicolor

Usage
----

Call Object#unicolor:

    > require 'unicolor'
    > "foo".unicolor
     => "\e[31mfoo\e[0m"

Object#uc as alias:

    > "foo".uc
     => "\e[31mfoo\e[0m"

Change the theme
----

    > Unicolor.theme :bg
    > "foo".uc
     => "\e[41mfoo\e[0m"

Define a theme
----

    > Unicolor.define_theme :my_theme, (31..36).to_a

Standard themes
----

    Unicolor.define_theme :fg, (31..36).to_a + (91..96).to_a
    Unicolor.define_theme :bg, (41..46).to_a + (101..106).to_a
    Unicolor.define_theme :fg256, (1..255).map{|i| [38, 5, i]}
    Unicolor.define_theme :bg256, (1..255).map{|i| [48, 5, i]}

Copyright
----

Copyright (c) 2011 jugyo. See LICENSE.txt for further details.