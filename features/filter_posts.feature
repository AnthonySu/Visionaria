Feature: Filter posts by 17 Sustainable Development Goals
  As a social media user
  In order to learn more about what others have to say about the 17 Sustainable Development Goals
  I want to be able to filter posts by the 17 Sustainable Development Goals
  
  Background:
    Given I sign up as "dodo" with "dodosrule", and email "dodo@dodo.com"
    And   the following users exist
    
      | username      | password          | email             |
      | dodobird      | dodosrule         | dodo@example.com  |
      | edasaur       | dinosaursarecool  | dino@example.com  |
     
    And   the following tagged posts exist
      
      | user      | content       | tag             | category                        |
      | edasaur   | "comments"    | Observaion      | Zero Hunger                     |
      | dodobird  | "comments2"   | Challenge       | Quality Education               |
      | dodobird  | "comments3"   | Challenge       | Quality Education               |
  
    And   I look at the tagged posts
  
  Scenario: Click on one of the 17 Sustainable Development Goals and see only posts relating to it
    When  I follow "Zero Hunger"
    Then  I should see "comments"
    And   I should not see "comments2"
    And   I should not see "comments3"
    
  Scenario: Can make a post relating to one of the Sustainable Development Goals
    When  I follow "Make Tagged Post"
    And   I fill in "content" with "comments4"
    And   I fill in "category" with "Water"
    And   I fill in "tag" with "Innovation"
    And   I press "Submit"
    Then  I look at the tagged posts
    When  I follow "Water"
    Then  I should see "comments4"
    And   I should not see "comments2"