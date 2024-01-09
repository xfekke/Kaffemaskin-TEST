Feature: Using Coffee Machine For Hot Tea
  As a user I want to be able to
  buy a cup of hot tea so that I can drink it

  Scenario: Hot Tea Without Milk
    Given that the machine is turned on
    And the machine has been cleaned
    And there is teabags in the container
    And the strength is chosen
    When I select the option for Hot Tea Without Milk
    And my payment has succeeded

  Scenario: There Is No Teabags
    Given that the coffee machine is turned on
    And the machine has been cleaned
    And there is no teabags in the container
    When I select the option for a Hot Tea Without Milk
    Then I should be informed the machine is out of teabags
    And I am informed to notify responsible staff to refill it

  Scenario: Hot Tea With Milk
    Given that the coffee machine is turned on
    And the machine has been cleaned
    And there is teabags in the container
    And there is milk in the machine
    And the strength is chosen
    When I select the option for a Hot Tea
    Then the coffee machine should pour out a cup of Hot Tea With Milk
    And the Hot Tea With Milk is ready for me to drink

  Scenario: There Is No Milk
    Given that the coffee machine is turned on
    And the machine has been cleaned
    And there is no milk in the container
    When I select the option for a Hot Tea With Milk
    Then I should be informed the machine is out of milk
    And I am informed to notify responsible staff to refill it