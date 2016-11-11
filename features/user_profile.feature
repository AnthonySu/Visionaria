Feature: User Profiles
  As a social media user
  In order to share my likes and interests with others
  I want to view and edit my profile page
  
  Background:
    Given   I am on the home page
    And     the following users exist
    
      | username      | name            | password          | email             |
      | dodobird      | Joanna Ng       | dodosrule         | dodo@example.com  |
      | edasaur       | Ed Wang         | dinosaursarecool  | dino@example.com  |
    
    And     the following tagged posts exist
      
      | username      | user_id     | content       | tag             | category                        | public    |
      | edasaur       | 2           | "comments"    | hunger          | Zero Hunger                     | true      |
      | dodobird      | 1           | "comments2"   | challenge       | Quality Education               | true      |
      | dodobird      | 1           | "comments3"   | onservation     | Water                           | true      |
  
    And   I sign up as "dodo" with "dodosrule", email "dodo@dodo.com", and name "Dodo"
    
    Scenario: Can view my own profile
      When  I view my profile
      Then  I should be on my profile page
      And   I should see "dodo"
      And   I should see "dodo@dodo.com"
      
    Scenario: Can edit my own profile
      When  I view my profile
      And   I follow "Edit"
      And   I fill in "username" with "DodoBirdsAreAwesome"
      And   I press "Submit"
      Then  I should see "DodoBirdsAreAwesome"
      
    Scenario: Cannot edit profiles of other users
      Given I am on the home page
      When  I view the profile page of "edasaur"
      Then  I should not see "Edit"
      
    Scenario: Can view my total points for posting
      When  I view my profile
      Then  I should see "0 points"
      
    Scenario: Can view all my posts
      When  I view my profile
      And   I press "Visions"
      Then  I should see all my visions
      
    Scenario: Can view all my tagged posts
      When  I view my profile
      And   I press "Sustainable UN Goals"
      Then  I should see all my tagged posts