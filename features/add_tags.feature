Feature: Add and edit tags to posts
  As a social media user
  In order to organize my posts
  I want to be able to add tags to my posts
  
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
  
    And   I am logged in as "dodobird" with "dodosrule"
  
  Scenario: Add a new tag to an existing post
    And   I follow "Profile"
    Then  I follow "Posts"
    And   I press "Edit" on the post with id "2"
    And   I fill in "Tags" with "schools"
    When  I press "Save Changes"
    Then  I should be on my posts page
    And   I should see "schools"
    
  Scenario: Create a new post with tags
    When  I follow "Make Post"
    And   I fill in "Content" with "comments3"
    And   I fill in "Tags" with "puertorico"
    And   I press "Publish"
    Then  I should see "puertorico"
    
  Scenario: Cannot add tags to a post that is not your own
    When  I follow the user "edasaur"
    And   I follow "Posts"
    Then  I should not see "Edit"