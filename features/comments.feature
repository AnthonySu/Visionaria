Feature: Make Comments
  As a social media user
  In order to express my views about other people's posts
  I want to make comments
  
Background:
    Given I am on the home page
    And   the following users exist
    
      | username      | password          | email             |
      | dodobird      | dodosrule         | dodo@example.com  |
      | edasaur       | dinosaursarecool  | dino@example.com  |
    
    And   the following tagged posts exist
      
      | user      | content       | tag             | category                        |
      | edasaur   | "comments"    | Observaion      | Zero Hunger                     |
      | dodobird  | "comments2"   | Challenge       | Quality Education               |
      | dodobird  | "comments3"   | Challenge       | Quality Education               |
    
    And   the following posts exist
      
      | user      | content       |
      | edasaur   | "content1"    |
      | dodo      | "content2"    |
    
    And   the following comments exist
      | username  | body          | post_id         |
      | akira     | Love U        | 1               |
  
    And   I sign up as "dodo" with "dodosrule", and email "dodo@dodo.com"
    
    Scenario: Successfully make a post comment with username
      When  I follow "1 Comments"
      And   I fill in "Your Comment" with "Good"
      And   I press "Create"
      Then  I should see "Good"
      And   I should see "dodo"
      When  I am on the home page
      Then  I should see "2 Comments"
      
    Scenario: Successfully make a post comment anonymously
      When  I follow "0 Comments"
      And   I fill in "Your Comment" with "Secret"
      And   I check "Anonymous"
      And   I press "Create"
      Then  I should see "Anonymous"
      
    Scenario: Successfully make a tagged post comment with username
      When  I follow "SUSTAINABLE UN GOALS"
      When  I follow "0 Comments"
      And   I fill in "Your Comment" with "Good"
      And   I press "Create"
      Then  I should see "Good"
      And   I should see "dodo"
      When  I am on the GOALS page
      Then  I should see "1 Comments"
      