Feature: User can edit movie
Scenario: Dive into the movie
    Given I am on the home page
    When I follow "More about"
    Then I should be on the movie page
    And I should see "Details about Cat" 

Scenario: Edit Movie
    Given I am on the movie page
    When I follow "Edit"
    Then I should be on the movie edit page
