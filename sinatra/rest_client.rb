require 'rubygems'
require 'httpclient'
if ARGV.size <2
  puts "Usage: #{$0} <method> <url> [text to send]"
  exit
end
method = ARGV[0].downcase
url = ARGV[1]
c= HTTPClient.new
if method == 'get'
  puts c.get(url).content
else
  post_text = ARGV[2] || "Empty post" 
  puts c.post(url,post_text).content
end
