Given("I am logged in as {string} and username {string}") do |fullname, username|
  User.create(fullname: fullname, username: username)
	visit login_path
	fill_in "Username", with: username
	click_button "Login"
end

When("I follow New Event link") do
 visit new_event_path
end

When("I fill in Name with {string}") do |event_name|
  fill_in "Name", with: event_name
end

When("I fill in Description with {string}") do |description|
  fill_in "Description", with: description
end

When("I fill in Location with {string}") do |location|
  fill_in "Location", with: location
end

When("I fill in Event Date with {string}") do |event_date|
  fill_in "Event Date", with: Date.parse(event_date)
end

When('I click the {string} button') do |button_name|
 click_button button_name
end

Then('I should see the event {string}') do |username|
  expect(page).to have_text username
end