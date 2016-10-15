Feature: Search posts by tags
  As a social media user
  In order to look at all posts about a certain subject
  I want to be able to search posts by tags
  
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

  Scenario: Click on a tag of an existing post to see posts relating to that tag
    When  I follow the tag "hunger"
    Then  I should see "comments"
    And   I should not see "comments2"