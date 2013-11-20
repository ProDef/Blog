Feature: Viewing posts
  In order to view my blog posts
  As a person who loves my blog
  I want to be able to see all of my posts

  Background: 
    Given I am on the homepage

  Scenario: Viewing posts
  	Given I am on the homepage
  	Then I click link "My Blog"
  	Then I should see "happy" and "very happy"



  Scenario: View a new post
  	Given I am on the homepage
  	Then I click link "My Blog"
    Given I have written a post titled "superman" with text "they fly faster than you fall"
    Then I should see the title "superman" and text "they fly faster than you fall"



