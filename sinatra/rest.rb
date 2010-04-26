require 'rubygems'
require 'sinatra'
require 'yaml'

$posts = ["Strona w budowie", "Zaczynam mój własny mikroblog!"]

get '/' do
  puts $posts.to_yaml
  $posts.to_yaml
end

post '/' do
  $posts << params.keys[0]
  "OK"
end
