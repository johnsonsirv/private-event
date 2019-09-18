Given("I am logged in as {string} with username {string}") do |fullname, username|
 User.create(fullname: fullname, username: username)
	visit login_path
	fill_in "Username", with: username
	click_button "Login"
end

When("I click Logout") do
 click_link "Logout"
end

Then("I should be on the Login Page") do
 expect(page).to have_current_path login_path
end
Then ("I should not see {string}") do |username|
	expect(page).to_not have_text username
end