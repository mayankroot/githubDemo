@all
Feature: verify facebook login page
  @login
  Scenario: Verify user is able to launch facebook page
    Given I am on facebook page
    When I enter the correct login fields
    Then I should be able to login successfully

  @login_fail
  Scenario: Verify the facebook welcome page once the user is logged in
    Given I am logged onto facebook page
    Then I should land on facebook welcome page
