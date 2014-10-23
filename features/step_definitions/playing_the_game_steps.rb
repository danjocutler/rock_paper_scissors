Given(/^I am on the game screen$/) do
  visit ('/name_entry')
  fill_in('name', with: "Dan")
  click_on "Register"
end

When(/^I click on "(.*?)"$/) do |weapon|
  click_on weapon
end

Then(/^I should be able to see "(.*?)"$/) do |text|
	visit '/result'
  expect(page).to have_content text
end

Given(/^I have made my choice$/) do
  visit '/result'
end

When(/^the computer chooses its move$/) do
  
end

Then(/^I should be able to see the result$/) do
  expect(page).to have_content 
end


