Feature: Points System
  As a social media user
  In order to stay motivated to make posts about the 17 Sustainable Development Goals
  I want to be able to gain points and rewards for posts I make about the 17 Sustainable Development Goals
  
  Background:
    Given I am on the home page
    And   the following users exist
    
      | username      | name            | password          | email             |
      | dodobird      | Joanna Ng       | dodosrule         | dodo@example.com  |
      | edasaur       | Ed Wang         | dinosaursarecool  | dino@example.com  |
    
    And   the following tagged posts exist
      
      | user      | user_id     | content       | tag             | category                        | public    |
      | edasaur   | 2           | "comments"    | hunger          | Zero Hunger                     | true      |
      | dodobird  | 1           | "comments2"   | challenge       | Quality Education               | true      |
      | dodobird  | 1           | "comments3"   | onservation     | Water                           | true      |
  
    And   I sign up as "dodo" with "dodosrule", and email "dodo@dodo.com"

"""  
  Scenario: Gain a "No Poverty" point for making a post about "No Poverty", one of the Sustainable Development Goals
    When  I follow "Make Tagged Post"
    And   I fill in "content" with "comments4"
    And   I fill in "category" with "No Poverty"
    And   I fill in "tag" with "innovation"
    And   I press "Submit"
    Then  I should be on the home page
    When  I follow "Profile"
    And   I follow "Points"
    Then  I should see "1" point for "No Poverty"
  
  Scenario: Do not gain a "No Poverty" point for making a post about "Zero Hunger"
    When  I follow "Make Tagged Post"
    And   I fill in "content" with "comments4"
    And   I fill in "category" with "Zero Hunger"
    And   I fill in "tag" with "challenge"
    And   I press "Submit"
    Then  I should be on the home page
    When  I follow "Profile"
    And   I follow "Points"
    Then  I should see "0" points for "No Poverty"
"""