Feature: Make Posts Private or Public
  As a social media user
  In order to feel comfortable posting anything
  I want to be able to make my posts public or private
  
    Background:
    Given I sign up as "dodo" with "dodosrule", and email "dodo@dodo.com"
    And   the following users exist

      | username      | password          | email             |
      | dodobird      | dodosrule         | dodo@example.com  |
      | edasaur       | dinosaursarecool  | dino@example.com  |
    
    And   the following tagged posts exist
      
      | user_id | content       | tag               | category           | taggedcomments       | likes     | public    |
      |   2     | "comments"    | Zero Hunger       | Observation        |     2                | 0         | true      |
      |   2     | "comments2"   | Zero Hunger       | Observation        |     1                | 0         | false     |
    
    And   I look at the tagged posts
    
    Scenario: I can see public posts by other users
    Then  I should see "comments"
    
    Scenario: I cannot see private posts by other users
    Then  I should not see "comments2"