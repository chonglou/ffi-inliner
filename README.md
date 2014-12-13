ffi-inliner
---------

## Why fork
A lots of warning:

    $HOME/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/ffi-inliner-0.2.4/lib/ffi-inliner/inliner.rb:3:in `<module:Inliner>': Use RbConfig instead of obsolete and deprecated Config.
    $HOME/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/ffi-inliner-0.2.4/lib/ffi-inliner/inliner.rb:3:in `<module:Inliner>': Use RbConfig instead of obsolete and deprecated Config.
    $HOME/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/ffi-inliner-0.2.4/lib/ffi-inliner/inliner.rb:9:in `<module:Inliner>': Use RbConfig instead of obsolete and deprecated Config.
    $HOME/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/ffi-inliner-0.2.4/lib/ffi-inliner/inliner.rb:11:in `<module:Inliner>': Use RbConfig instead of obsolete and deprecated Config.
    $HOME/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/ffi-inliner-0.2.4/lib/ffi-inliner/inliner.rb:89:in `ldshared': Use RbConfig instead of obsolete and deprecated Config.

When I clone and run 'rake gem:build' follow by README.rdoc

    NoMethodError: undefined method `source_index' for Gem:Module
    tasks/setup.rb:204:in `depend_on'

After fix it, also:

    NoMethodError: undefined method `source_index' for Gem:Module
    tasks/setup.rb:204:in `depend_on'

I check tag list:

    $ git tag -l
    0.2.1
    0.2.3
    0_2_0

There is no 0.2.4, OH MY GOD!!!

All source code designed by Andrea Fazzi  [http://github.com/remogatto/ffi-inliner], I just package it using gemspec.

## DESCRIPTION:

With ffi-inliner you can run C code within your ruby script.

## FEATURES/PROBLEMS:

* Mix C snippets in your Ruby code and gulp it on the fly!
* It's based on Ruby-FFI so the C code you inject is portable across
  Ruby implementations!
* Yep, it means that you can run it on JRuby too!
* Fast compilation through tcc[http://bellard.org/tcc/]
* But it can use the system's compiler (e.g. gcc) on those platforms
  that don't support tcc (e.g. OSX) or that don't have it installed

## SYNOPSIS:

    require 'ffi-inliner'

    module MyLib extend Inliner
      inline 'void say_hello(char* name) { printf("Hello, %s\n", name); }'
    end

    MyLib.say_hello('boys')

    class Foo
      include MyLib
    end

    Foo.new.say_hello('foos')

For other hints see the examples/ folder or visit the wiki[http://wiki.github.com/remogatto/ffi-inliner/tutorial]. For a "real" world example you may be interested to ffi-life[http://github.com/remogatto/ffi-life].

## REQUIREMENTS:

* ffi >= 0.4.0
* gcc and/or tcc >= 0.9.25 (optional)

## DOWNLOAD/INSTALL:

add to Gemfile:

    gem 'ffi-inliner', github:'chonglou/ffi-inliner'

or from github:

    git clone git://github.com/chonglou/ffi-inliner.git
    cd ffi-inliner
    [sudo] rake install

## CREDITS

Special thanks to:

* Andrea Fazzi  [http://github.com/remogatto/ffi-inliner]
* Ryan Davis for his inspiring
  RubyInline[http://www.zenspider.com/ZSS/Products/RubyInline/].

* Roger Pack for improving support for Windows platforms.

## Contributing

1. Fork it ( https://github.com/chonglou/ffi-inliner/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
