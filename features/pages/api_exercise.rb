# encoding: UTF-8

require 'net/http'
require "uri"
require 'json'

class Apijson      

def send_get_byid(id)
url = URI.parse($url_api + "/posts/" + id)
req = Net::HTTP::Get.new(url.path)



@res = Net::HTTP.new(url.host, url.port).start do |http|

   http.request(req)

end

write_as_log("POSTS_GET",@res.body)

end

def send_get_byid_comments(id)
url = URI.parse($url_api + "/posts/" + id + "/comments")
req = Net::HTTP::Get.new(url.path)



@res = Net::HTTP.new(url.host, url.port).start do |http|

   http.request(req)

end

write_as_log("COMMENTS_GET",@res.body)

end

def send_get_comments_bypostid(postid)

url = URI.parse($url_api + "/comments/")
req = Net::HTTP::Get.new(url.path + "?postId=" + postid)

@res = Net::HTTP.new(url.host, url.port).start do |http|

   http.request(req)

end

write_as_log("COMMENTS_GET_POSTID",@res.body)

end

def send_get_comments_byuserid(userid)

url = URI.parse($url_api + "/posts/")
req = Net::HTTP::Get.new(url.path + "?userId=" + userid)

@res = Net::HTTP.new(url.host, url.port).start do |http|

   http.request(req)

end

write_as_log("COMMENTS_GET_USERID",@res.body)

end

def send_post_method

url = URI.parse($url_api + "/posts/")
req = Net::HTTP::Post.new(url.path)

   @res = Net::HTTP.new(url.host, url.port).start do |http|

   http.request(req)

   end  
 write_as_log("POSTS_POST_METHOD",@res.body)

end

def send_delete_method(id)
  
url = URI.parse($url_api + "/posts/" + id)
req = Net::HTTP::Delete.new(url.path)

   @res = Net::HTTP.new(url.host, url.port).start do |http|

   http.request(req)

   end 

 write_as_log("POSTS_DELETE_METHOD",@res.body)
end


def verify_status_code(status_code)

  if (@res.code != status_code) then
  write_as_failed("Error on the call ","Error" + @res.code)
  fail("Error" + @res.code)
  end

end

def verify_id_exists
  
  id_list = JSON.parse(@res.body)
  x = id_list.count
if x < 2 then
  @id = id_list["id"]
  if (@id=="" || @id==nil) then
  write_as_failed("Id field validation","problem to bring id")
  fail("problem to bring id")
  end
else
i=0

while i < x do
  @id = id_list[i]["id"]
  if (@id=="" || @id==nil) then
  write_as_failed("Id field validation","problem to bring id")
  fail("problem to bring id")
  end
  i+=1
end

end

  
end

def verify_id(id)
  @id = JSON.parse(@res.body)
  @id = @id["id"]

  if (@id.to_i != id.to_i) then
  write_as_failed("Id field validation","id "+@id.to_s+" is different of id "+ id.to_s)
  fail("id "+@id.to_s+" is different of id "+ id.to_s)
  end
end

def verify_title_exists
  
  title_list = JSON.parse(@res.body)
  x = title_list.count
  
i=0

while i < x do
  @title= title_list[i]["title"]
  if (@title=="" || @title==nil) then
  write_as_failed("Title validation","problem to bring title")
  fail("problem to bring title")
  end
  i+=1
end

end

def verify_body_exists
  
  body_list = JSON.parse(@res.body)
  x = body_list.count
  
i=0

while i < x do
  @body= body_list[i]["title"]
  if (@body=="" || @body==nil) then
  write_as_failed("Body validation","problem to bring body")
  fail("problem to bring body")
  end
  i+=1
end

end

def verify_body_empty
  body = JSON.parse(@res.body)
  body = body["body"].to_s

if (body=="" || body==nil) then
  write_as_failed("Body validation","body is empty")
  fail("body is empty")
end

end

def verify_comments_name_empty
  
  name_list = JSON.parse(@res.body)
  x = name_list.count
  i = 0

  while i < x do
    name = name_list[i]["name"]
    
  if (name=="" || name==nil) then
  write_as_failed("Name validation","name is empty")
  fail("name is empty" )
  end
    i+=1
  end
  
  
end

def verify_comments_email_empty
  
  email_list = JSON.parse(@res.body)
  x = email_list.count
  i = 0
  while i < x do
    email = email_list[i]["email"]
    
  if (email=="" || email==nil) then
  write_as_failed("Email validation","email is empty")
  fail("email is empty")
  end
    i+=1
  end

end

def verify_if_is_the_same_postid(postid)
  
  postid_list = JSON.parse(@res.body)
  x = postid_list.count
  i = 0
  
  while i < x do
 
  @postid = postid_list[i]["postId"]
  if (@postid.to_i != postid.to_i) then
  write_as_failed("Postid validation","Postid is different")
  fail("Postid is different" )
  end
  i+=1
  end
  
end

def verify_delete_method(id)
 
  response = JSON.parse(@res.body)
  
  if response.empty? == false then
  write_as_failed("Delete Method","Error to delete id" + id)
  fail("Error to delete id" + id)
  end
  

end

def write_as_failed(name_file,str_write)
  File.open("FAILED_TESTS/"+name_file + Time.now.to_s + ".txt", 'w') { |file| file.write("error message:" + str_write) }
end

def write_as_log(name_file,str_write)
  File.open("LOGS/"+name_file + Time.now.to_s + ".txt", 'w') { |file| file.write("Response:" + str_write) }
end

end