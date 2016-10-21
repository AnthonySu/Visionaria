Feature: Make posts
  As a social media user
  In order to share thoughts and ideas for my community
  I want to be able to make a post
  
  Background:
    Given I am on the home page
    And   the following users exist
    
      | username      | password          | email             |
      | dodobird      | dodosrule         | dodo@example.com  |
      | edasaur       | dinosaursarecool  | dino@example.com  |
    
    And   the following posts exist
      
      | user      | content       |
      | edasaur   | "comments"    |
      | dodobird  | "comments2"   |
  
    And   I am logged in as "dodobird" with "dodosrule"
  
  Scenario: Successfully make a post
    When  I follow "Make Post"
    And   I fill in "Content" with "comments3"
    And   I press "Submit"
    Then  I should see "comments3"
    
  Scenario: Can see posts from other users
    Then  I should see "comments"
    And   I should see "comments2"