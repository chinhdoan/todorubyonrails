Feature: Login form
Input data to form
click submit button

Scenario: Sends a contact message
Given I am a user_super
Given I am on the signin page
When I fill in "session[email]" with "super@septeni-technology.jp"
When I fill in "session[password]" with "xxxxxxxxxx"
When I press "Login"
Then I should be on the clients page