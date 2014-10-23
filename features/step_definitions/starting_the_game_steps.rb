Given(/^I am on the homepage$/) do
  visit ('/')
end

When(/^I follow "(.*?)"$/) do |text_link|
  click_on "Enter, if ye dare"
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I am on the name entry screen$/) do
  visit ('/name_entry')
end

When(/^I enter my name$/) do
  fill_in('name', with: "Dan") 
end

When(/^I hit "(.*?)"$/) do |button|
  click_on "Register"
end