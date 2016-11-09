Feature: Add tags to posts
  As a social media user
  In order to organize my posts
  I want to be able to add tags to my posts
  
  Background:
    Given I am on the homepage
    And   the following users exist
  
      | username      | name            | password          | email             |
      | dodobird      | Joanna Ng       | dodosrule         | dodo@example.com  |
      | edasaur       | Ed Wang         | dinosaursarecool  | dino@example.com  |
    
    And   the following tagged posts exist
       
      | username  | user_id       | content       | tag             | category                        | public  |
      | edasaur   | 2             | "comments"    | Observation     | Zero Hunger                     | true    |
      | dodobird  | 1             | "comments2"   | Challenge       | Quality Education               | true    |
  
    And   I sign up as "dodo" with "dodosrule", email "dodo@dodo.com", and name "Dodo"
    And   I look at the tagged posts
    
  Scenario: Create a new post with tags
    When  I follow "Share Goal"
    And   I fill in "Your Thoughts" with "comments3"
    And   I select "Innovation" from "Category"
    And   I select "Quality Education" from "Sustainable UN Goal"
    And   I press "Submit"
    Then  I should see the image "Innovation"