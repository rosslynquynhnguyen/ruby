ruby
====

Ruby-beginners challenges

This is a great way to progressively learn Ruby by solving small problems.

Notes
=============

Important websites:
+ https://www.tutorialspoint.com/ruby/
+ https://www.ruby-lang.org
+ http://www.ruby-doc.org/
+ http://www.rubydoc.info/
+ https://en.wikibooks.org/wiki/Ruby_Programming

1. init.rb is the main entry to the application
2. \lib contains the code logic
    + Each module is in a separate folder using snake-case convention
    + Each class is in a .rb file
3. To assemble code:
    + require absolute path
        + require "#{\_\_dir\_\_}/deep_space/spaceship"
    + require\_relative 'deep\_space/spaceship'
4. Gems are available from - rubygems.org
    + www.ruby-toolbox.com is a good directory for gems
5. Basic terminal command:
    + gem list => list installed gems
    + gem search -r xxx => search for xxx gem remotely
    + gem install xx => install gem xxx
    + gem uninstall xx => uninstall
    + bundler is dependency management package, and is a gem itself
        + Once a Gemfile is available in a project, bundle install command will install all the required gems
6. Testing
