Given(/^I access odotom$/) do
  $SetupBrowser.access_url($url_otodom)
end

Given(/^I see the textfield to search$/) do
 @Otodom = Otodom.new
 @Otodom.verify_search
end

When(/^i select as property type "(.*?)"$/) do |property_type|
  @Otodom.select_property_type(property_type)
end

When(/^select this property "(.*?)"$/) do |property_method|
  @Otodom.select_property_method(property_method)
end

Then(/^search this property in "(.*?)"$/) do |location|
  @Otodom.search_property(location)
  @Otodom.click_on_search
end

Then(/^filter to the least expensive as value "(.*?)"$/) do |price|
 @Otodom.select_price(price)
end

Then(/^filter it for "(.*?)" room\(s\)$/) do |room|
 @Otodom.select_number_rooms(room)
end

Then(/^search again$/) do
 @Otodom.click_on_search
end

Then(/^verify if all apartments in the first page there are "(.*?)" rooms$/) do |room|
  @Otodom.verify_rooms_quantity(room)
end


Then(/^verify if all apartments in the first page are lower than "(.*?)"$/) do |price|
  @Otodom.verify_price(price)
end