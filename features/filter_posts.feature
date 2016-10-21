Feature: Filter posts by 17 Sustainable Development Goals
  As a social media user
  In order to learn more about what others have to say about the 17 Sustainable Development Goals
  I want to be able to filter posts by the 17 Sustainable Development Goals
  
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
      | 3     | dodobird  | 1         | "comments3"   |                 |                                 | 2016-11-12T04:05:06+07:00 |
  
    And   I am logged in as "dodobird" with "dodosrule"
  
  Scenario: Click on one of the 17 Sustainable Development Goals and see only posts relating to it
    When  I follow "Zero Hunger"
    Then  I should see "comments"
    And   I should not see "comments2"
    
  Scenario: Can make a post relating to one of the Sustainable Development Goals
    When  I follow "Make Post"
    And   I fill in "Content" with "comments4"
    And   I fill in "Goal" with "Quality Education"
    And   I press "Publish"
    Then  I should be on the home page
    When  I follow "Quality Education"
    Then  I should see "comments2"
    And   I should see "comments4"
    
  Scenario: Add a goal to an existing post
    And   I follow "Profile"
    Then  I follow "Posts"
    And   I press "Edit" on the post with id "3"
    And   I fill in "Goal" with "Zero Hunger"
    When  I press "Save Changes"
    Then  I should be on my posts page
    And   I should see "Zero Hunger"