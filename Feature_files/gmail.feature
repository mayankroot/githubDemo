Feature: verify facebook page
  @start
  Scenario: Verify user is able to launch facebook page
    Given I am on facebook page
    When I should see and fill the login fields
    Then I should be able to login successfully

