Feature: Otodom

Background:
      
Given I access odotom
And I see the textfield to search


 Scenario: As a user I want to list the least expensive apartment to rent in Poznan which have at least two rooms
 When i select as property type "mieszkania"
 And select this property "na wynajem"
 Then search this property in "Poznan"
 And filter to the least expensive as value "750 zł"
 And filter it for "2" room(s)
 Then search again
 And verify if all apartments in the first page there are "2" rooms
 And verify if all apartments in the first page are lower than "750"
 




 
