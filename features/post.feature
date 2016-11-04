Feature: Make posts
  As a social media user
  In order to share thoughts and ideas for my community
  I want to be able to make a post
  
  Background:
    Given I am on the home page
    And   the following users exist
    
      | username      | name            | password          | email             |
      | dodobird      | Joanna Ng       | dodosrule         | dodo@example.com  |
      | edasaur       | Ed Wang         | dinosaursarecool  | dino@example.com  |
    
    And   the following posts exist
      
      | username    | user_id   | content       |
      | edasaur     | 2         | "comments"    |
      | dodobird    | 1         | "comments2"   |
  
    And   I sign up as "dodo" with "dodosrule", email "dodo@dodo.com", and name "Dodo"
  
  Scenario: Successfully make a post
    When  I follow "Share Vision"
    And   I fill in "Your Thoughts" with "comments3"
    And   I press "Submit"
    Then  I should see "comments3"
    
  Scenario: Can see posts from other users
    Then  I should see "comments"
    And   I should see "comments2"