#Not sure about this feature, API might not be free?
Feature: Translate
  As a social media user
  In order to share and understand posts from different languages
  I want to be able to translate posts using a google translate API
  
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
    
    Scenario: translate a post to Spanish
    When  I press "translate"
    And   I choose "Spanish"
    Then  I should see "comentarios"