Given(/^I am on the game screen$/) do
  visit ('/name_entry')
  fill_in('name', :with => "Dan")
  click_on "Register"
end

When(/^I click on "(.*?)"$/) do |weapon|
  click_on weapon
end

Then(/^I should be able to see "(.*?)"$/) do |text|
	visit '/comp_turn'
  expect(page).to have_content text
end

Given(/^I have made my choice$/) do
  visit '/comp_turn'
end

When(/^the computer chooses it's move$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the result$/) do
  expect(page).to have_content 
end
