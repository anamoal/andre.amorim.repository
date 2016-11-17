# encoding: UTF-8

class SetupBrowser

def access_url(url)
  
  $browser.goto url
  sleep(2)
 
end

def browser_local

browser = Watir::Browser.new :chrome
$browser = browser
$browser.driver.manage.window.maximize
screen_width = $browser.execute_script("return screen.width;")
screen_height = $browser.execute_script("return screen.height;")
$browser.driver.manage.window.resize_to(screen_width,screen_height)
Watir.default_timeout = 300
end


def close_browser

if $browser != nil then
	$browser.close
end

end


end