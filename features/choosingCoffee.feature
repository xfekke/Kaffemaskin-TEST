Feature: Using Coffee Machine for Black Coffee
  As a user I want to be able to
  buy a cup of black coffee so that I can drink it

  Scenario: If
    Given that the coffee machine is turned on
    And there is grounded coffee beans in the container
    When I select the option for a black coffee
    And the strength is chosen
    And my payment has succeeded
    Then the coffee machine should pour out a cup of hot coffee
    And the coffee is ready for me to drink

  Scenario: There Is No Grounded Beans
    Given that the coffee machine is turned on
    And there is no grounded coffee beans in the container
    When I select the option for a black coffee
    Then I should be informed the machine is out of coffee
    And I am informed to notify responsible staff to refill it