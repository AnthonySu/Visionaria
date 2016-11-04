Feature: Make Posts Private or Public
  As a social media user
  In order to feel comfortable posting anything
  I want to be able to make my posts public or private
  
    Background:
    Given I am on the homepage
    And   the following users exist

      | username      | name            | password          | email             |
      | dodobird      | Joanna Ng       | dodosrule         | dodo@example.com  |
      | edasaur       | Ed Wang         | dinosaursarecool  | dino@example.com  |
    
    And   the following tagged posts exist
      
      | username      | user_id | content       | tag               | category           |
      | edasaur       | 2       | "comments"    | Zero Hunger       | Observation        |
      | edasaur       | 2       | "comments2"   | Zero Hunger       | Observation        |
    
    And   I sign up as "dodo" with "dodosrule", email "dodo@dodo.com", and name "Joanna Ng"
    And   I look at the tagged posts
    
    Scenario: I can see public posts by other users
      Then  I should see "comments"