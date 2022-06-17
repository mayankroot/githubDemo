Feature: verify gmail page
  @start
  Scenario: verify user is able to launch gmail home page
    Given I am on gmail home page
    Then I should see and fill the login fields

