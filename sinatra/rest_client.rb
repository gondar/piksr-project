require 'rubygems'
require 'httpclient'
if ARGV.size <2
  puts "Usage: #{$0} <method> <url> [text to send]"
  exit
end
method = ARGV[0].downcase
url = ARGV[1]
post_text = ARGV[2] || "Empty post" 
c= HTTPClient.new
case method 
when 'get'
  puts c.get(url).content
when 'post'
  puts c.post(url,post_text).content
when 'put'
  puts c.put(url,post_text).content
when 'delete'
  puts c.delete(url).content
else
  puts "Unkown method #{method}"
end
