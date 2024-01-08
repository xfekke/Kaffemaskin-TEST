Feature: Using Coffee Machine For Hot Chocolate
  As a user I want to be able to
  buy a cup of hot chocolate so that I can drink it

  Scenario: If
    Given that the machine is turned on
    And there is chocolate powder in the container
    And there is milk in the machine
    And the strength is chosen
    When I select the option for Hot Chocolate
    And my payment has succeeded
    Then the coffee machine should pour out a cup of Hot Chocolate
    And the Hot Chocolate is ready for me to drink

  Scenario: There Is No Chocolate Powder
    Given that the coffee machine is turned on
    And there is no chocolate powder in the container
    When I select the option for a Hot Chocolate
    Then I should be informed the machine is out of chocolate
    And I am informed to notify responsible staff to refill it

  Scenario: There Is No Milk
    Given that the coffee machine is turned on
    And there is no milk in the machine
    When I select the option for a Hot Chocolate
    Then I should be informed the machine is out of milk
    And I am informed to notify responsible staff to refill it