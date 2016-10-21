Feature: Points System
  As a social media user
  In order to stay motivated to make posts about the 17 Sustainable Development Goals
  I want to be able to gain points and rewards for posts I make about the 17 Sustainable Development Goals
  
  Background:
    Given I am on the home page
    And   the following users exist
    
      | user_id     | username      | password          | name      | email             |
      | 1           | dodobird      | dodosrule         | Dodo B.   | dodo@example.com  |
      | 2           | edasaur       | dinosaursarecool  | Dino E.   | dino@example.com  |
    
    And   the following posts exist
      
      | id    | author    | user_id   | content       | tags            | sustainable_development_goal    | published_at              |
      | 1     | edasaur   | 2         | "comments"    | hunger, food    | Zero Hunger                     | 2016-10-12T04:05:06+07:00 |
      | 2     | dodobird  | 1         | "comments2"   |                 | Quality Education               | 2016-11-12T04:05:06+07:00 |
      | 3     | dodobird  | 1         | "comments3"   |                 |                                 | 2016-11-12T04:15:06+07:00 |
  
    And   I am logged in as "dodobird" with "dodosrule"
  
  Scenario: Gain a "No Poverty" point for making a post about "No Poverty", one of the Sustainable Development Goals
    When  I follow "Make Post"
    And   I fill in "Content" with "comments4"
    And   I fill in "Goal" with "No Poverty"
    And   I press "Publish"
    Then  I should be on the home page
    When  I follow "Profile"
    And   I follow "Points"
    Then  I should see "1" point for "No Poverty"
  
  Scenario: Do not gain a "No Poverty" point for making a post about "Zero Hunger"
    When  I follow "Make Post"
    And   I fill in "Content" with "comments4"
    And   I fill in "Goal" with "Zero Hunger"
    And   I press "Publish"
    Then  I should be on the home page
    When  I follow "Profile"
    And   I follow "Points"
    Then  I should see "0" points for "No Poverty"
  
  