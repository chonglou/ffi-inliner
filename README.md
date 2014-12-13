ffi-inliner
---------
  by Andrea Fazzi

  http://github.com/remogatto/ffi-inliner

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

* Ryan Davis for his inspiring
  RubyInline[http://www.zenspider.com/ZSS/Products/RubyInline/].

* Roger Pack for improving support for Windows platforms.

## Contributing

1. Fork it ( https://github.com/chonglou/ffi-inliner/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
