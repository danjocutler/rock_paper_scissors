Given(/^I am on the game screen$/) do
  visit ('/game_screen')
end

When(/^I choose "(.*?)"$/) do |button|
  click_on "Rock"
end

# Then(/^I should see "(.*?)"$/) do |text|
#   expect(page).to have_content text
# end