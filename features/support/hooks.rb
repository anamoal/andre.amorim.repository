require 'watir-webdriver'


Before do
  
$url_otodom = "https://otodom.pl/"
$SetupBrowser = SetupBrowser.new
$SetupBrowser.browser_local

end

After do
  
$SetupBrowser.close_browser

end

