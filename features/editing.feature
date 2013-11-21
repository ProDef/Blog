Feature: Editing posts
  In order to edit blog posts
  As a user
  I want to be able to edit any of my posts

  Background:
  	Given I am on posts

  @create_post
  Scenario: Edit posts
  	Then I should see "happy" and "very happy"
  	Given I change text to "he says we're happy"
  	Then I should see the title "happy" and text "he says we're happy"

  @javascript
  @create_post
  Scenario: Destroy my posts
  	Given I destroy the first post on my blog
  	When I confirm popup
  	Then I should not see "happy" or "he says we're happy"




