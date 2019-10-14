Given("a user {string} and username {string} exists in database") do |fullname, username|
 User.create(fullname: fullname, username: username)
end

Given(/^I am on the Private Events Hompage$/) do
  visit root_path
end

When(/^I follow the Signup link$/) do
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

Then('I should see {string}') do |username|
  expect(page).to have_text username
end