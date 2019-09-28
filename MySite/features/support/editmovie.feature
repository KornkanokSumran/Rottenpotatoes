Feature: User can edit movie
Scenario: Edit Movie
  Given I am on the home page
  When I follow "More about Aladdin"
  And I should be on Movie page
  And I follow "Edit info"
  Then I should see on the movie edit page
