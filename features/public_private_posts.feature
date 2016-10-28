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
      
      | user      | content       | tag               | category           | comments       | likes     | public    |
      | edasaur   | "comments"    | Zero Hunger       | Observation        |                | 0         | true      |
      | edasaur   | "comments2"   | Zero Hunger       | Observation        |                | 0         | false     |
    
    And   I look at the tagged posts
    
    Scenario: I can see public posts by other users
    Then  I should see "comments"
    
    Scenario: I cannot see private posts by other users
    Then  I should not see "comments2"