require 'rubygems' #Standardowe repozytorium programow i bibliotek
require 'httpclient' #Nasza przegladarka www

c = HTTPClient.new #Nowy obiekt
puts c.get('http://demotywatory.pl').content #pobieramy stronke
