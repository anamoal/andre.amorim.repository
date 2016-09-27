# encoding: UTF-8

class SetupBrowser

def setup_iphone
caps = WebDriver::Remote::Capabilities.new
caps[:browserName] = 'iPhone'
caps[:platform] = 'MAC'
caps['device'] = 'iPhone 5'
caps["browserstack.debug"] = "true"
caps['project'] = 'GuestCentric'
caps['browserstack.local'] = @boolean_local
browser = Watir::Browser.new(:remote,:url => "http://andramorimalves1:ryKPGPkcKwBGC2KHqM33@hub.browserstack.com/wd/hub",:desired_capabilities => caps)
$browser = browser
end

def setup_android
caps = WebDriver::Remote::Capabilities.new
caps[:browserName] = 'Android'
caps[:platform] = 'Android'
caps['device'] = 'Samsung Galaxy S III'
caps["browserstack.debug"] = "true"
caps['project'] = 'GuestCentric'
caps['browserstack.local'] = @boolean_local
browser = Watir::Browser.new(:remote,:url => "http://andramorimalves1:ryKPGPkcKwBGC2KHqM33@hub.browserstack.com/wd/hub",:desired_capabilities => caps)
$browser = browser
end

def setup_windows_firefox
caps = WebDriver::Remote::Capabilities.new
caps['browser'] = 'Firefox'
caps['browser_version'] = '29.0'
caps['os'] = 'Windows'
caps['os_version'] = '8'
caps['resolution'] = '1024x768'
caps["browserstack.debug"] = "true"
caps['project'] = 'GuestCentric'
caps['browserstack.local'] = @boolean_local
browser = Watir::Browser.new(:remote,:url => "http://andramorimalves1:ryKPGPkcKwBGC2KHqM33@hub.browserstack.com/wd/hub",:desired_capabilities => caps)
$browser = browser
$browser.driver.manage.window.maximize
end

def setup_windows_chrome
caps = Selenium::WebDriver::Remote::Capabilities.chrome
caps[:os] = "Windows"
caps[:os_version] = "7"
caps[:browser] = "Chrome"
caps[:browser_version] = "47.0"
caps["browserstack.debug"] = "true"
caps['project'] = 'GuestCentric'
caps["chromeOptions"] = {}
caps["chromeOptions"]["args"] = ["--disable-popup-blocking"]
caps['browserstack.local'] = @boolean_local
browser = Watir::Browser.new(:remote,:url => "http://andramorimalves1:ryKPGPkcKwBGC2KHqM33@hub.browserstack.com/wd/hub",:desired_capabilities => caps)
$browser = browser
$browser.driver.manage.window.maximize
end

def setup_windows_ie8
caps = WebDriver::Remote::Capabilities.new
caps['browser'] = 'IE'
caps['browser_version'] = '8.0'
caps['os'] = 'Windows'
caps['os_version'] = '7'
caps['resolution'] = '1024x768'
caps["browserstack.debug"] = "true"
caps['project'] = 'GuestCentric'
caps['browserstack.local'] = @boolean_local
browser = Watir::Browser.new(:remote,:url => "http://andramorimalves1:ryKPGPkcKwBGC2KHqM33@hub.browserstack.com/wd/hub",:desired_capabilities => caps)
$browser = browser
$browser.driver.manage.window.maximize
end

def setup_windows_ie9
caps = WebDriver::Remote::Capabilities.new
caps['browser'] = 'IE'
caps['browser_version'] = '9.0'
caps['os'] = 'Windows'
caps['os_version'] = '7'
caps['resolution'] = '1024x768'
caps["browserstack.debug"] = "true"
caps['project'] = 'GuestCentric'
caps['browserstack.local'] = @boolean_local
browser = Watir::Browser.new(:remote,:url => "http://andramorimalves1:ryKPGPkcKwBGC2KHqM33@hub.browserstack.com/wd/hub",:desired_capabilities => caps)
$browser = browser
$browser.driver.manage.window.maximize
end

def setup_windows_ie10
caps = WebDriver::Remote::Capabilities.new
caps['browser'] = 'IE'
caps['browser_version'] = '10.0'
caps['os'] = 'Windows'
caps['os_version'] = '7'
caps['resolution'] = '1024x768'
caps["browserstack.debug"] = "true"
caps['project'] = 'GuestCentric'
caps['browserstack.local'] = @boolean_local
browser = Watir::Browser.new(:remote,:url => "http://andramorimalves1:ryKPGPkcKwBGC2KHqM33@hub.browserstack.com/wd/hub",:desired_capabilities => caps)
$browser = browser
$browser.driver.manage.window.maximize
end

def setup_ipad
caps = WebDriver::Remote::Capabilities.new
caps[:browserName] = 'iPad'
caps[:platform] = 'MAC'
caps['device'] = 'iPad 3rd (7.0)'
caps["browserstack.debug"] = "true"
caps['project'] = 'GuestCentric'
caps['browserstack.local'] = @boolean_local
browser = Watir::Browser.new(:remote,:url => "http://andramorimalves1:ryKPGPkcKwBGC2KHqM33@hub.browserstack.com/wd/hub",:desired_capabilities => caps)
$browser = browser
end

def setup_mac_safari
caps = WebDriver::Remote::Capabilities.new
caps['browser'] = 'Safari'
caps['browser_version'] = '7.0'
caps['os'] = 'OS X'
caps['os_version'] = 'Mavericks'
caps['resolution'] = '1024x768'
caps["browserstack.debug"] = "true"
caps['project'] = 'GuestCentric'
caps['browserstack.local'] = @boolean_local
browser = Watir::Browser.new(:remote,:url => "http://andramorimalves1:ryKPGPkcKwBGC2KHqM33@hub.browserstack.com/wd/hub",:desired_capabilities => caps)
$browser = browser
end

def setup_chrome_grid
caps = Selenium::WebDriver::Remote::Capabilities.chrome
caps[:platform] = 'Windows'
browser = Watir::Browser.new(:remote,:url => 'http://localhost:4444/wd/hub',:desired_capabilities => caps)
$browser = browser
$browser.driver.manage.window.maximize
screen_width = $browser.execute_script("return screen.width;")
screen_height = $browser.execute_script("return screen.height;")
$browser.driver.manage.window.resize_to(screen_width,screen_height)
end

def setup_iphone_grid
capabilities = {
:deviceName => 'iPhone 5s',
    :platformVersion => '9.2',
    :platformName => 'IOS',
    :browserName => 'safari',
}
driver = Selenium::WebDriver.for :remote,
desired_capabilities: capabilities,
url: "http://127.0.0.1:4723/wd/hub"
driver.manage.timeouts.implicit_wait = 10
wait = Selenium::WebDriver::Wait.new :timeout => 30
browser = Watir::Browser.new driver
$browser = browser
end

def setup_phantomjs
#capabilities = Selenium::WebDriver::Remote::Capabilities.phantomjs("phantomjs.page.settings.userAgent" => "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1468.0 Safari/537.36")
capabilities = Selenium::WebDriver::Remote::Capabilities.phantomjs("phantomjs.page.settings.userAgent" => "Mozilla/5.0 (Windows NT 6.1; Macintosh; Intel Mac OS X x.y; rv:10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36", "phantomjs.page.cookiesEnabled" => true)
switches = ["--webdriver-loglevel=NONE"]
driver = Selenium::WebDriver.for :phantomjs, :desired_capabilities => capabilities, :args => switches
$browser = ::Watir::Browser.new driver 
#$browser.execute_script <<-JS 
#page= document.documentElement.innerHTML;page.onError = function(msg, trace) {var msgStack = ['ERROR: ' + msg];if (trace && trace.length) {msgStack.push('TRACE:');trace.forEach(function(t) {msgStack.push(' -> ' + t.file + ': ' + t.line + (t.function ? ' (in function "' + t.function +'")' : ''));});}console.error(msgStack.join(separacao));};
#JS
end

def set_local(boolean_string)

@boolean_local = boolean_string

end

def browser_local
browser = Watir::Browser.new :firefox
$browser = browser

end

def close_browser

if $browser != nil then
	$browser.close
end

end


end