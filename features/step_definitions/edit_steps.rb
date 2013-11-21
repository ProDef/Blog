Given(/^I am on posts$/) do
	visit "/posts"
end

Given(/^I change text to "(.*?)"$/) do |text|
	visit "/posts"
	click_link ('Edit')
	fill_in 'Text', :with => text
	click_button ('Update Post')
end

Then(/^I should see the text "(.*?)"$/) do |title, text|
  page.should have_content(title)
  page.should have_content(text)
end

When(/^I confirm popup$/) do
  page.driver.browser.switch_to.alert.accept    
end

When(/^I dismiss popup$/) do
  page.driver.browser.switch_to.alert.dismiss
end

Given(/^I have destroyed a post titled "(.*?)" with text "(.*?)"$/) do |title, text|
  visit '/posts/new'
  fill_in 'Title', :with => title
  fill_in 'Text', :with => text
  click_button ('Create Post')
  click_link ("Destroy")
end

Given(/^I destroy the first post on my blog$/) do
	click_link 'Destroy'
end

Then(/^I should not see "(.*?)" or "(.*?)"$/) do |title, text|
	page.should_not have_content(title)
 	page.should_not have_content(text)
end




