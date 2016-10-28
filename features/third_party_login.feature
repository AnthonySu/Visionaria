Feature: Third Party Login
  As a social media user
  In order to login to sevaral social media platforms easily
  I want to be able to login to Visionaria through Facebook
  
  Scenario: Successfully login to Visionaria using my Facebook account
    Given   I am on the home page
    When    I follow "Login with Facebook"
    Then    I should be on Facebook's login page
    And     I fill in "email or phone number" with "joanna.ng@berkeley.edu"
    And     I fill in "password" with "123456"
    And     I press "Submit"
    Then    I should be on the posts page