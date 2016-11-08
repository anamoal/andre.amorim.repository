Feature: Api Exercise

# Background:
      
#      Given I access something
#     And I do something for all scenaries as example any login

#Automated tests
 Scenario: Test verify id from posts
 When I send the method GET with id "1"
 Then I have to see the code "200" from json
 And json has to return the same id in the field id

 Scenario: Test verify body from posts
 When I send the method GET with id "1"
 Then I have to see the code "200" from json
 And verify body if is not empty

Scenario: Test verify name from comments
 When I send the method GET to comments with id "1" 
 Then I have to see the code "200" from json
 And verify all names if are not empty

 Scenario: Test verify email from comments
 When I send the method GET to comments with id "1"
 Then I have to see the code "200" from json
 And verify all emails if are not empty

 Scenario: Test call comments by user id and verify post id
 When I send the method GET with post id "5"
 Then I have to see the code "200" from json
 And if there is the same post id

Scenario: Test call posts by userid and verify all fields if exist
 When I send the method GET with user id "1"
 Then I have to see the code "200" from json
 And if there is id
 And if there is title
 And if there is body

 Scenario: Test POST method to posts
 When I send the POST method
 Then I have to see the code "201" from json
 And any id of creation as response

 Scenario: Test DELETE method to posts
 When I send  DELETE method to id "5"
 Then I check if id is still there in posts




 
