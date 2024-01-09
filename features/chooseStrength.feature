Feature: Choose Coffee Strength
  As I user I want to be able to control the strength of my coffee (weak, normal, strong) by adjusting it using
  up and downward arrows next to the strength choice on the screen, so that I can get a cup of coffee with the strength I desire.

  Scenario: Sucessful diminish the strength of the coffee
    Given that I have already chosen which type of coffee I want
    When I want to choose a weaker strength I can press the downward button to go from normal to weak
    Then the choice should be registered
    And the coffee should eventually be delivered with a weaker strength

  Scenario: Sucessful increase the strength of the coffee
    Given that I have already chosen which type of coffee I want
    When I want to choose a stronger strength I can press the upward button to go from normal to strong
    Then the choice should be registered
    And the coffee should eventually be delivered with a stronger strength