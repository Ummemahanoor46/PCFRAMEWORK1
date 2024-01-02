Feature: User Login

  @smoke
  Scenario: Successful Login
    Given the user is on the login page
    When the user enters valid username and password
    And clicks the login button
    Then the user should be logged in successfully

  Scenario: Unsuccessful Login with Incorrect Credentials
    Given the user is on the login page
    When the user enters invalid username and/or password
    And clicks the login button
    Then an error message should be displayed

  Scenario: Empty Fields Validation
    Given the user is on the login page
    When the user submits the login form without entering credentials
    Then appropriate error messages should be displayed

  Scenario: Remember Me Functionality
    Given the user is on the login page
    When the user checks the "Remember Me" option
    And logs in
    Then the user should remain logged in after reopening the application

  Scenario: Account Locking after Multiple Failed Attempts
    Given the user is on the login page
    When the user enters incorrect credentials multiple times
    Then the account should be locked

  Scenario: Password Recovery
    Given the user is on the login page
    When the user clicks on the "Forgot Password" link
    And provides the necessary information for password recovery
    Then the user should be able to reset the password

  Scenario: Multi-factor Authentication (MFA)
    Given the user is on the login page
    When the user logs in with MFA enabled
    And provides the required authentication
    Then the user should be logged in successfully

  Scenario: Social Media Login
    Given the user is on the login page
    When the user logs in using social media credentials
    Then the user should be logged in successfully

  Scenario: Session Timeout
    Given the user is logged in
    When the session times out
    Then the user should be prompted to log in again
