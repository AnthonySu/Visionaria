Feature: Set language preferrences
    As a social media user
    In order to view information in my preferred language
    I want to be able to set my language preferrences
    
    Background:
      Given     I sign up as "dodo" with "dodosrule", email "dodo@dodo.com", and name "Dodo"
      When      I view my setting
    
    Scenario: Setting language to Spanish renders Spanish view
      And       I choose "Spanish" from "Language"
      When      I go to the home page
      Then      I should see "Bienvenido, dodo"
      
    Scenario: Setting language to English renders English view
      And       I choose "English" from "Language"
      When      I go to the home page
      Then      I should see "Welcome, dodo"