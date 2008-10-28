Feature Transferring money between two accounts

  Scenario: Simple transfer
    Given an account called 'source' containing £100
    And an account called 'destination' containing £50
    When I transfer £20 from source to destination
    Then the 'source' account should contain £80
    And the 'destination' account should contain £70
  