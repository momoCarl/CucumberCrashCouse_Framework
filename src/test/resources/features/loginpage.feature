Feature: login Functionality for Opencart E-commerce Website

  As a user of the Opencart website
  I want to be able to log in with my account
  so that i can access my account-related features and manage my orders

  Background:
    Given I am on the OpenCart login page

  Scenario: Successful login with valid credentials
    Given I have entered a valid username and password
    When I click on the login button
    Then I should be logged in successfully

  Scenario Outline: Unsuccessful login with invalid or empty credentials
    Given I have entered invalid "<username>" and "<password>"
    When  I click on the login button
    Then I should see an error message indicating "<error_message>"

    Examples:
      | username         | password        | error_message                        |
      | invald@email.con | invalidPassword | Warning: No match for E-mail Address |
      | abcccc           | validPassword   | Warning: No match for E-mail Address |
      | validEmail.com   | abcccc          | Warning: No match for E-mail Address |

  Scenario: Navigation to the forgotten password page
    When I click on "Forgotten Password " link
    Then  I should be redirected to the password reset page




