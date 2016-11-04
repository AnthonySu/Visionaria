# Don't know how Anthony is implementing this
# Not sure about this feature, API might not be free?
Feature: Translate
  As a social media user
  In order to share and understand posts from different languages
  I want to be able to translate posts using a google translate API
  
  Background:
    Given I sign up as "dodo" with "dodosrule", and email "dodo@dodo.com"
    And   the following users exist

      | username      | name            | password          | email             |
      | dodobird      | Joanna Ng       | dodosrule         | dodo@example.com  |
      | edasaur       | Ed Wang         | dinosaursarecool  | dino@example.com  |