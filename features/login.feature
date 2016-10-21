Feature: Sign up and login
  As a social media user
  In order to share my thoughts/contributions in a safe, positive environments and look at others' thoughts/contributions
  I want to be able to sign up and login to Visionaria
  
  Background: 
    Given I am on the home page
    And   the following users exist
    
      | user_id     | username      | password          | name      | email             |
      | 1           | dodobird      | dodosrule         | Dodo B.   | dodo@example.com  |
      | 2           | edasaur       | dinosaursarecool  | Dino E.   | dino@example.com  |
    
  Scenario: Sign up to new account
    When  I follow "Sign up"
    Then  I fill in "Name" with "Joanna Ng"
    And   I fill in "Username" with "cs169-visionaria"
    And   I fill in "Password" with "123456"
    And   I fill in "Email" with "jojo@example.com"
    And   I press "Sign up"
    Then  I should see "cs169-visionaria"
    
  Scenario: Successfully sign in to existing account
    When  I follow "Sign in"
    And   I fill in "Username" with "dodobird"
    And   I fill in "Password" with "dodosrule"
    And   I press "Sign in"
    Then  I should see "dodobird"
    And   I should not see "edasaur"
    
  Scenario: Cannot sign in with incorrect password
    When  I follow "Sign in"
    And   I fill in "Username" with "dodobird"
    And   I fill in "Password" with "dodo"
    And   I press "Sign in"
    Then  I should see "incorrect password or username"
    And   I should not see "dodobird"
    
  Scenario: Cannot sign in to non-existant user
    When  I follow "Sign in"
    And   I fill in "Username" with "DodosAreTheBest"
    And   I fill in "Password" with "98765"
    And   I press "Sign in"
    Then  I should see "incorrect password or username"