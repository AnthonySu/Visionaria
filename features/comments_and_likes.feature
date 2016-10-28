Feature: Add comments and Likes to Posts
  As a social media user
  In order to show my support to other users
  I want to be able to comment on and like posts
  
  Background:
    Given I sign up as "dodo" with "dodosrule", and email "dodo@dodo.com"
    And   the following users exist

      | username      | password          | email             |
      | dodobird      | dodosrule         | dodo@example.com  |
      | edasaur       | dinosaursarecool  | dino@example.com  |
    
    And   the following tagged posts exist
      
      | user      | content       | tag               | category           | comments       | likes     | public    |
      | edasaur   | "comments"    | Zero Hunger       | Observation        |                | 0         | true      |
  
    And   I look at the tagged posts
    
    Scenario: Add a new comment to an existing post
    When  I follow "Comment"
    And   I fill in "Your comment" with "commenting comment"
    And   I press "Submit"
    Then  I should see "commenting comment"
    
    Scenario: Liking a post
    When  I press "like"
    Then  I should see "1 likes"