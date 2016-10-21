Feature: Search posts by tags
  As a social media user
  In order to look at all posts about a certain subject
  I want to be able to search posts by tags
  
  Background:
    Given I sign up as "dodo" with "dodosrule", and email "dodo@dodo.com"
    And   the following users exist

      | username      | password          | email             |
      | dodobird      | dodosrule         | dodo@example.com  |
      | edasaur       | dinosaursarecool  | dino@example.com  |
    
    And   the following tagged posts exist
      
      | user      | content       | tag            | category                        |
      | edasaur   | "comments"    | Observation    | Zero Hunger                     |
      | dodobird  | "comments2"   | Challenge      | Quality Education               |
  
    And   I look at the tagged posts

  Scenario: Click on a tag of an existing post to see posts relating to that tag
    When  I follow "Observation"
    Then  I should see "comments"
    And   I should not see "comments2"