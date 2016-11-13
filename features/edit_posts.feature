Feature: Edit and delete user's own posts and tagged posts
  As a user
  In order to manage my posts better
  I want to edit and delete them
  
  Background:
    Given   the following users exist

      | username      | name            | password          | email             | admin |
      | dodobird      | Joanna Ng       | dodosrule         | dodo@example.com  | false |
      | edasaur       | Ed Wang         | dinosaursarecool  | dino@example.com  | false |
      
    And   the following posts exist
      
      | username    | user_id   | content       | public    |
      | edasaur     | 2         | "comments"    | true      |
      | dodobird    | 1         | "comments2"   | true      |
      
    And   the following tagged posts exist
      
      | username      | user_id | content       | tag               | category           | public |
      | dodobird      | 1       | "comments"    | Zero Hunger       | Observation        | true   |
      | edasaur       | 2       | "comments2"   | Zero Hunger       | Observation        | false  |
      
    And   I sign up as "dodo" with "dodorule", email "dodo@dodo.com", and name "Joanna Ng"
  
  #happy path
  Scenario: I can edit and delete my own posts
    When I look at the posts
    And  I follow edit
    Then I am on the edit page
    And  I change the 
    
  Scenario: I can edit and delete my own tagged posts
    
  Scenario: I can't edit and delete others' post
    
  Scenario: I can't edit and delete others' tagged post
    