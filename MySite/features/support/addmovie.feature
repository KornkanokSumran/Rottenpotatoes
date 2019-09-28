Feature: Add new movie
Scenario: Go to Create new page
  Given I am on the home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  
  