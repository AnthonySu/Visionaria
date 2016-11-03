Feature: Add comments and Likes to Posts
  As a social media user
  In order to show my support to other users
  I want to be able to comment on and like posts
  
  Background:
    Given I am on the homepage
    And   the following users exist

      | username      | name            | password          | email             |
      | dodobird      | Joanna Ng       | dodosrule         | dodo@example.com  |
      | edasaur       | Ed Wang         | dinosaursarecool  | dino@example.com  |
    
    And   the following tagged posts exist
      
      | username  | user_id | content       | tag               | category           |
      | edasaur   | 2       | "comments"    | Zero Hunger       | Observation        |
  
    And   I sign up as "dodo" with "dodosrule", email "dodo@dodo.com", and name "Joanna"
    And   I look at the tagged posts
    
    Scenario: Add a new comment to an existing post
    When  I follow "Comment"
    And   I fill in "Your Comment:" with "commenting comment"
    And   I press "Create"
    Then  I should see "commenting comment"
    
    Scenario: Liking a post
    When  I press "like"
    Then  I should see "1 likes"