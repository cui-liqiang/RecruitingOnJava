@mechanize
Feature:  As an student
  I want to submit my information
  So that I can let hr know me

  Scenario: submit
    Given I am on the submit page
    When I submit my information
    Then I should see success message
