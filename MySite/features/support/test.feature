Feature: BDD test User can use rottenpotatoes
  
Scenario: Go to Homepage
  Given I am on the home page
  When I go to the home page
  Then I should see "All Movies"
  
Scenario: Go to Create new page
  Given I am on the home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  
  