Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I click link "(.*?)"$/) do |link|
  click_link (link)
end

Then(/^I should see "(.*?)" and  "(.*?)"$/) do |title, text|
end

Then(/^I should see "(.*?)" and "(.*?)"$/) do |title, text|
  page.should have_content
end

