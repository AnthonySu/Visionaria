#Don't actually know how this scenario should go
Feature: Share on Facebook
  As a social media user
  In order to share inspiring posts on Visionaria with friends on other social media platforms
  I want to be able to share posts on Facebook
  
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
    
    Scenario: Share an existing post
    When  I press "Share"
    Then  I should see "Share post on timeline?"
    When  I press "Yes"
    Then  I should see "post shared on timeline"