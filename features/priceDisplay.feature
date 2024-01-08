Feature: Price Display
  As a user I want to be able to
  View the price of my drink

  Scenario: Ingredients Exists
    Given that the machine is turned on
    And the ingredients required for the specific drink exists
    When I view the drink options on the meny
    Then I should see the price of the drink next to the name

  Scenario: No Ingredients
    Given that the machine is turned on
    And the ingredients required for the specific drink are out
    When I view the drink options on the meny
    Then I can not see the price of that specific drink next to the name

