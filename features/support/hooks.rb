require 'watir-webdriver'
require 'json'
require 'net/http'
require 'open-uri'
require 'rubygems'
require 'watir-webdriver/extensions/alerts'
require 'base64'
require 'openssl'
require 'selenium-webdriver'


include Selenium


Before do
  
$url_api = "http://jsonplaceholder.typicode.com"

end

After do
  
  

end

