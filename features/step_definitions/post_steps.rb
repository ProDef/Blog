Given(/^I am on new post$/) do
  visit '/posts/new'
end

Given(/^I have written a post titled "(.*?)" with text "(.*?)"$/) do |title, text|
  visit '/posts/new'
  fill_in 'Title', :with => title
  fill_in 'Text', :with => text
  click_button ('Create Post')
end

Then(/^I should see the title "(.*?)" and text "(.*?)"$/) do |title, text|
  page.should have_content(title)
  page.should have_content(text)
end

Given(/^I have written a post without a title and with text "(.*?)"$/) do |text|
  visit '/posts/new'
  fill_in 'Text', :with => text
  click_button ('Create Post')
end


Then(/^I should see the error "(.*?)"$/) do |error|
  page.should have_content(error)
end