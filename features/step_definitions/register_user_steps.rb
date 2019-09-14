Given(/^I am on the Private Events Hompage$/) do
  visit root_path
end

When(/^I follow the Signup link$/) do
 click_link "Signup"
end

Then(/^I should be on the New User Signup Page$/) do
  expect(page).to have_current_path signup_path
end