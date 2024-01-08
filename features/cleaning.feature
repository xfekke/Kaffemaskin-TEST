Feature: Cleaning
  As the owner of the coffee machine I want it to be
  Cleaned every day
  So there is no health hazards

  Scenario: Machine has been cleaned
    Given that the machine has been cleaned within 24 hours
    When I try to use the machine
    Then the machine should work

  Scenario: Machine has not been cleaned
    Given that the machine has not been cleaned within 24 hours
    When I try to use the machine
    Then I should receive a message on the display that the machine has to be cleaned before usage
    And the machine will not let me buy a coffee
