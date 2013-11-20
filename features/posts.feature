Feature: Writing posts
In order to write new blog posts
As a person who writes on my blog
I want to be able to write new blog posts
 
   Background: 
     Given I am on new post
 
   Scenario: Creating a post
   	 Given I have written a post titled "Love" with text "Love isn't for everyone"
   	 Then I should see the title "Love" and text "Love isn't for everyone"

   Scenario: Writing a new post without a title
     Given I have written a post without a title and with text "The weak fall and crumble in the land of trouble"
     Then I should see the error "Title can't be blank"
 
   Scenario: Writing a new post with a three character title
     Given I have written a post titled "She" with text "She has an ass like wtf"
     Then I should see the error "Title is too short (minimum is 5 characters)"