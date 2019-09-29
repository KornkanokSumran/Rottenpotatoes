Feature: User can edit movie
Scenario: Dive into the movie
    Given I am on the home page
    When I am on the Details about Aladdin
    Then I should be on the Details about Cat
    And I should see "Details about Cat" 
