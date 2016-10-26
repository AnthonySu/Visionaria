Feature: Add tags to posts
  As a social media user
  In order to organize my posts
  I want to be able to add tags to my posts
  
  Background:
    Given I sign up as "dodo" with "dodosrule", and email "dodo@dodo.com"
    And   the following users exist
  
      | username      | password          | email             |
      | dodobird      | dodosrule         | dodo@example.com  |
      | edasaur       | dinosaursarecool  | dino@example.com  |
    
    And   the following tagged posts exist
       
      | user      | content       | tag             | category                        |
      | edasaur   | "comments"    | Observation     | Zero Hunger                     |
      | dodobird  | "comments2"   | Challenge       | Quality Education               |
  
    And   I look at the tagged posts
    
  Scenario: Create a new post with tags
    When  I follow "Make Tagged Post"
    And   I fill in "Your Thoughts" with "comments3"
    And   I fill in "Tag" with "puertorico"
    And   I select "Quality Education" from "Category"
    And   I press "Submit"
    Then  I should see "puertorico"