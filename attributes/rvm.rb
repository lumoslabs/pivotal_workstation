node.default["rvm"]= {
  "rubies" => {
      # gcc-4.2 is available from the osx-gcc project on github. We dont install it
      # as it overwrites later versions of files provided by xcode.
    #"ree-1.8.7-2012.02" => { :env => "CC=gcc-4.2" },
    #"ruby-1.8.7-p358" => { :env => "CC=gcc-4.2" },
    #"ruby-1.9.2-p290" => { :env => "CC=gcc-4.2" },
    "ruby-1.9.3-p125" => { :env => "CC=gcc-4.2" },
  },
  "default_ruby" => "ruby-1.9.3-p125",
  "default_rubygems" => "1.8.10"
}
