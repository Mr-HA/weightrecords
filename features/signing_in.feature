Feature: Signing in
    In order to use the site
    As a user
    I want to be able to sign in
    
    Scenario: Signing in via confirmation
        Given there are the following users:
            | email                     | password  |
            | user@weight.record.com.tw | password  |
        And "user@weight.record.com.tw" opens the email with subject "Confirmation instructions"
        And they click the first link in the email
        Then I should see "Your account was successfully confirmed"
        And I should see "Signed in as user@weight.record.com.tw"