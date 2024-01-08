Feature: Water Connection
  As the owner of the coffee machine I want it to be
  Connected to water piping
  So I do not need to refill water manually

  Scenario: Verify Water Connection
    Given that the machine is turned on
    And the pipeline is physically Connected
    When I have entered the maintenence key
    And I am logged in as the owner
    And I select a beverage
    Then the machine shall pour a drink using water from the pipelines

  Scenario: Else
    Given that the machine is turned on
    And the pipeline is physically Connected
    When I have entered the maintenence key
    And I am logged in as the owner
    And I select a beverage
    Then the machine will not pour a drink
    And on the display an error message informs that there is no water connected