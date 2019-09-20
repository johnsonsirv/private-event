Given("I am on the Private Events Home Page") do
   visit root_path
end

When("I follow the Login link") do
 visit login_path
end
When('I enter Username as {string}') do |username|
   fill_in "Username", with: username
end

When('I press {string} button') do |button_name|
 click_button button_name
end

Then('I should see {string} as my logged in username') do |username|
  expect(page).to have_text username
end