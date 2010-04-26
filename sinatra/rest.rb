require 'rubygems'
require 'sinatra'
require 'yaml'

$posts = ["Strona w budowie", "Zaczynam mój własny mikroblog!"]

get '/' do
  $posts.to_yaml
end

post '/' do
  $posts << request.body.read
  "OK"
end

delete '/:id/?' do
  $posts.delete_at(params[:id].to_i)
end

put '/:id/?' do
  $posts[params[:id].to_i] = request.body.read
  "OK"
end
