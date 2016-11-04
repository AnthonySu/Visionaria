Feature: Search posts by tags
  As a social media user
  In order to look at all posts about a certain subject
  I want to be able to search posts by tags
  
  Background:
    Given I am on the homepage
    And   the following users exist

      | username      | name            | password          | email             |
      | dodobird      | Joanna Ng       | dodosrule         | dodo@example.com  |
      | edasaur       | Ed Wang         | dinosaursarecool  | dino@example.com  |
    
    And   the following tagged posts exist
      
      | username  | user_id   | content       | tag            | category                        | public    |
      | edasaur   | 2         | "comments"    | Observation    | Zero Hunger                     | true      |
      | dodobird  | 1         | "comments2"   | Challenge      | Quality Education               | true      |
  
    And   I sign up as "dodo" with "dodosrule", email "dodo@dodo.com", and name "Dodo"
    And   I look at the tagged posts

  Scenario: Click on a tag of an existing post to see posts relating to that tag
    When  I follow "Observation"
    Then  I should see "comments"
    And   I should not see "comments2"