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

@SetupBrowser = SetupBrowser.new
  
#Bellow i can setup to run in differents environments and send the option by parameter on test
case ENV['ENVIRONMENT']

when 'stg'

$url = "here is the url of staging"
$url_api = "http://jsonplaceholder.typicode.com"


when 'prod'

$url = "here is the url of production"
$url_api = "http://jsonplaceholder.typicode.com"

end

#Bellow i can choose to run in differents browsers and send the option by parameter on test
case ENV['BROWSER']



  when 'phantomjs'
    
    @SetupBrowser.setup_phantomjs

  when 'iphone_grid'

    @SetupBrowser.setup_iphone_grid
    
  when 'chrome_grid'

    @SetupBrowser.setup_chrome_grid

  when 'ff'
    
    @SetupBrowser.setup_windows_firefox
    
  when 'chrome'
   
    @SetupBrowser.setup_windows_chrome
    
  when 'ie8'

    @SetupBrowser.setup_windows_ie8

  when 'ie9'

    @SetupBrowser.setup_windows_ie9

  when 'ie10'
    
    @SetupBrowser.setup_windows_ie10
    
  when 'safari'
    
    @SetupBrowser.setup_mac_safari

  when 'iphone'
    
    @SetupBrowser.setup_iphone

  when 'android'
    
    @SetupBrowser.setup_android
  
  when  'ipad'
   
    @SetupBrowser.setup_ipad
  end



end

After do
  
  @SetupBrowser.close_browser

end

