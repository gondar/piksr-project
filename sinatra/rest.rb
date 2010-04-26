require 'rubygems'
require 'sinatra'
require 'yaml'

$posts = ["Strona w budowie", "Zaczynam wlasny mikroblog!"]

get '/' do
  $posts.to_yaml
end
