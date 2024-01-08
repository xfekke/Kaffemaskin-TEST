Feature: Using Coffee Machine for Black Coffee
  As a user I want to be able to
  buy a cup of black coffee so that I can drink it

  Scenario: If
    Given that the coffee machine is turned on
    And there is grounded coffee beans in the container
    When I select the option for a black coffee
    And my payment has succeeded
    Then the coffee machine should pour out a cup of hot coffee
    And the coffee is ready for me to drink

  Scenario: Else
    Given that the coffee machine is turned on
    And there is no grounded coffee beans in the container
    When I select the option for a black coffee
    Then I should be informed the machine is out of coffee
    And I am informed to notify responsible staff to refill it

Feature: Using Coffee Machine For Latte
  As a user I want to be able to
  buy a cup of latte so that I can drink it

  Scenario: If
    Given that the machine is turned on
    And there is grounded coffee beans in the container
    And there is milk in the machine
    When I select the option for Latte
    And my payment has succeeded
    Then the coffee machine should pour out a cup of Latte
    And the Latte is ready for me to drink

  Scenario: Else
    Given that the coffee machine is turned on
    And there is no grounded coffee beans in the container
    And there is no milk in the machine
    When I select the option for a Latte
    Then I should be informed the machine is out of coffee
    And I should be informed the machine is out of milk
    And I am informed to notify responsible staff to refill it

Feature: Payment With Card
  As a user I want to be able to
  Pay with my card

  Scenario: Payment Accepted
    Given that the machine is turned on
    And my drink has been selected
    When I swipe my card to pay
    And my payment has succeeded
    Then I shall receive my drink


  Scenario: Card Declined
    Given that the machine is turned on
    And my drink has been selected
    When I swipe my card to pay
    And there is not enough currency on the card
    Then I shall see the message: "payment has been declined"
    And I receive no drink
    And the meny resets

Feature: Price Display
  As a user I want to be able to
  View the price of my drink

  Scenario: 
    Given that the machine is turned on
    When I view the drink options on the meny
    Then I should see the price of the drink next to the name


Feature: Water Connection
  As the owner of the coffee machine I want it to be
  Connected to water piping
  So I do not need to refill water manually

  Scenario: Verify Water Connection
    Given that the machine is turned on
    And the pipeline is physically Connected
    When I select a beverage
    And payment has succeeded
    Then 


Feature: Choose Coffee Strength
  As I user I want to be able to control the strength of my coffee (weak, normal, strong) by adjusting it using 
  up and downward arrows next to the strength choice on the screen, so that I can get a cup of coffee with the strength I desire.

  Scenario: Sucessful diminish the strength of the coffee
    Given that the machine works
    And that I have already chosen which type of coffee I want
    When I want to choose a weaker strength I can press the downward button to go from normal to weak
    Then the choice should be registered
    And the coffee should eventually be delivered with a weaker strength 


  Scenario: Sucessful increase the strength of the coffee
    Given that the machine works
    And that I have already chosen which type of coffee I want
    When I want to choose a stronger strength I can press the upward button to go from normal to strong
    Then the choice should be registered
    And the coffee should eventually be delivered with a stronger strength