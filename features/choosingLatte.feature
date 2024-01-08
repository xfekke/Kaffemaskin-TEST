Feature: Using Coffee Machine For Latte
  As a user I want to be able to
  buy a cup of latte so that I can drink it

  Scenario: If
    Given that the machine is turned on
    And there is grounded coffee beans in the container
    And there is milk in the machine
    And the strength is chosen
    When I select the option for Latte
    And my payment has succeeded
    Then the coffee machine should pour out a cup of Latte
    And the Latte is ready for me to drink

  Scenario: There Is No Grounded Beans
    Given that the coffee machine is turned on
    And there is no grounded coffee beans in the container
    When I select the option for a Latte
    Then I should be informed the machine is out of coffee
    And I am informed to notify responsible staff to refill it

  Scenario: There Is No Milk
    Given that the coffee machine is turned on
    And there is no milk in the machine
    When I select the option for a Latte
    Then I should be informed the machine is out of milk
    And I am informed to notify responsible staff to refill it

