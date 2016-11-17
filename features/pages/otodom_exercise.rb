# encoding: UTF-8

class Otodom    

def verify_search
  $browser.span(:class=>/-selection/).exists?
end

def select_property_type(property)
  $browser.span(:class=>"selection").wait_until_present
  $browser.div(:class=>"col-type").span(:class=>/selection--single/).click
  select_text_list(property)
end

def select_property_method(method)
  $browser.div(:class=>"col-type").div(:class=>/select pillRight/).span(:class=>/selection--single/).click
  select_text_list(method)
end

def search_property(location)
  $browser.div(:class=>/location-city/).span(:class=>/selection--single/).click
  $browser.text_field(:class=>/select2-search__field/).set(location)
  sleep(2)
  
end

def click_on_search
  $browser.button(:class=>"btn btn-action btn-search-big").click
  sleep(4)
end

def select_price(price)
  $browser.div(:class=>"col-md-price fblock").div(:class=>"col-xs-6",:index=>1).span(:class=>/selection--single/).click
  select_text_list(price)
end

def select_number_rooms(room)
  sleep(3)
  $browser.div(:class=>/col-md-rooms/).span(:class=>/selection--multiple/).click
  select_text_list(room)
end

def select_text_list(sometext)
  $browser.ul(:class=>/results__options/).wait_until_present
  $browser.ul(:class=>/results__options/).li(:text=>sometext).click
end

def verify_rooms_quantity(room)
  
 x=0
  while x<100 do
    $browser.div(:class=>"col-md-content").div(:class=>"offer-item-details").wait_until_present
    if $browser.div(:class=>"col-md-content").div(:class=>"offer-item-details",:index=>x).exists? then
      nroom=$browser.div(:class=>"col-md-content").div(:class=>"offer-item-details",:index=>x).ul(:class=>"params").li(:class=>"offer-item-rooms").text
      nroom=nroom.scan(/\d+/).first
      #puts nroom
      if (nroom.to_i!=room.to_i) then
      fail("Any problem happened! was found "+ nroom + " room(s)!")
      end
       x+=1
    else
       if (x==0) then
       fail("fail to bring offers")
       end
       x=100
    end

  end
  

end

def verify_price(price)
  
  x=0
  while x<100 do
    $browser.div(:class=>"col-md-content").div(:class=>"offer-item-details").wait_until_present
    if $browser.div(:class=>"col-md-content").div(:class=>"offer-item-details",:index=>x).exists? then
      vprice=$browser.div(:class=>"col-md-content").div(:class=>"offer-item-details",:index=>x).ul(:class=>"params").li(:class=>"offer-item-price").text
      vprice=vprice.scan(/\d+/).first
      #puts vprice
      if (vprice.to_i > price.to_i) then
      fail("Any problem happened price"+ vprice + " is greater!")
      end
       x+=1
    else
       if (x==0) then
       fail("fail to bring offers")
       end
       x=100
    end

  end

end

end