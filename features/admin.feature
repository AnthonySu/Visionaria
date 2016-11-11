Feature: Create admin users in order to moderate sire
  As an admin social media username
  In order to monitor activities and ensure a safe space
  I want to be able to delete posts that are offensive
  
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
      
    And   I am signed in as an admin
    And   I am on the homepage
      
  Scenario: I can delete visions made by other users
    When I look at the posts
    Then I should be able to delete the post by "edasaur"
    
  Scenario: I can delete goals made by other users
    When I look at the tagged posts
    Then I should be able to delete the post by "dodobird"
    