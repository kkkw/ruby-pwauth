require "open3"

o,e,s = Open3.capture3("echo 111");
puts o
