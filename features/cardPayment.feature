Feature: Payment With Card
  As a user I want to be able to
  Pay with my card

  Scenario: Payment Accepted
    Given that my drink has been selected
    When I swipe my card to pay
    And my payment has succeeded
    Then I shall receive my drink

  Scenario: Card Declined
    Given that my drink has been selected
    When I swipe my card to pay
    And there is not enough currency on the card
    Then I shall see the message: "payment has been declined"
    And I receive no drink
    And the meny resets