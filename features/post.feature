Feature: Make posts
  As a social media user
  In order to share thoughts and ideas for my community
  I want to be able to make a post
  
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
  
  Scenario: Successfully make a post
    When  I follow "Make Post"
    And   I fill in "Content" with "comments3"
    And   I press "Publish"
    Then  I should see "comments3"
    
  Scenario: Can see posts from other users
    Then  I should see "comments"
    And   I should see "comments2"