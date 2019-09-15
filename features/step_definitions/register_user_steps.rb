Given(/^I am on the Private Events Hompage$/) do
  visit root_path
end

When(/^I follow the Signup link$/) do
 click_link "Signup"
end

Then(/^I should be on the New User Signup Page$/) do
  expect(page).to have_current_path signup_path
end

Given('I am on the Signup page') do
  visit signup_path
end

When('I fill in Full Name with {string}') do |full_name|
  fill_in "Full Name", with: full_name
end

When('I fill in Username with {string}') do |username|
   fill_in "Username", with: username
end

When('I click {string}') do |button_name|
 click_button button_name
end

Then("I should be on John Doe's homepage") do
  expect(page).to have_current_path users_home_path
end

Then('I should see {string}') do |username|
  expect(page).to have_text username
end