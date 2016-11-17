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
 And verify if all properties in the first page there are "2" rooms
 And verify if all properties in the first page are lower than "750"
 
  Scenario: As a user I want to list all houses for sales in Cała Polska which have at least three rooms
 When i select as property type "domy"
 And select this property "na sprzedaż"
 Then search this property in "Cała Polska"
 And filter to the least expensive as value "4 000 000 zł"
 And filter it for "3" room(s)
 Then search again
 And verify if all properties in the first page there are "3" rooms
 And verify if all properties in the first page are lower than "4000000"




 
