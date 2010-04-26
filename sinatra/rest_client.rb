require 'rubygems'
require 'httpclient'
exit if ARGV.size <1
c= HTTPClient.new
puts c.get(ARGV[0]).content
