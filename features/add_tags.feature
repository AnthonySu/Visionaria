Feature: Add and edit tags to posts
  As a social media user
  In order to organize my posts
  I want to be able to add tags to my posts
  
  Background:
    Given I am on the home page
    And   the following users exist
  
      | username      | password          | email             |
      | dodobird      | dodosrule         | dodo@example.com  |
      | edasaur       | dinosaursarecool  | dino@example.com  |
    
    And   the following posts exist
       
      | user      | content       | tag             | category                        |
      | edasaur   | "comments"    | Observatio      | Zero Hunger                     |
      | dodobird  | "comments2"   |                 | Quality Education               |
  
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