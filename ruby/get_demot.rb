require 'rubygems' #Standardowe repozytorium programow i bibliotek
require 'httpclient' #Nasza przegladarka www

c = HTTPClient.new #Nowy obiekt
page = c.get('http://demotywatory.pl').content #pobieramy stronke
puts page.scan(/<img src="(.*)" class="demot"/).flatten.inspect #szukamy obrazkow
