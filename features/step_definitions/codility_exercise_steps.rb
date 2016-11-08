When(/^I send the method GET with id "(.*?)"$/) do |id|
  @id = id
  @api = Apijson.new
  @api.send_get_byid(id)

end

Then(/^I have to see the code "(.*?)" from json$/) do |status_code|
  @api.verify_status_code(status_code)
end

Then(/^json has to return the same id in the field id$/) do
  @api.verify_id(@id)
end

Then(/^verify body if is not empty$/) do
   @api.verify_body_empty
end

When(/^I send the method GET to comments with id "(.*?)"$/) do |id|
  @api = Apijson.new
  @api.send_get_byid_comments(id)
end

Then(/^verify all names if are not empty$/) do
  @api.verify_comments_name_empty
end

Then(/^verify all emails if are not empty$/) do
  @api.verify_comments_email_empty
end

Then(/^if there is the same post id$/) do
  @api.verify_if_is_the_same_postid(@post_id)
end

When(/^I send the method GET with post id "(.*?)"$/) do |post_id|
  @post_id = post_id
  @api = Apijson.new
  @api.send_get_comments_bypostid(post_id)
end

When(/^I send the method GET with user id "(.*?)"$/) do |user_id|
  @api = Apijson.new
  @api.send_get_comments_byuserid(user_id)
end

Then(/^if there is id$/) do
  @api.verify_id_exists
end

Then(/^if there is title$/) do
  @api.verify_title_exists
end

Then(/^if there is body$/) do
  @api.verify_body_exists
end

When(/^I send the POST method$/) do
  @api = Apijson.new
  @api.send_post_method
end

Then(/^any id of creation as response$/) do
  @api.verify_id_exists
end

When(/^I send  DELETE method to id "(.*?)"$/) do |id|
  @id = id
  @api = Apijson.new
  @api.send_delete_method(id)
end

Then(/^I check if id is still there in posts$/) do
  @api.send_get_byid(@id)
  @api.verify_delete_method(@id)
end
