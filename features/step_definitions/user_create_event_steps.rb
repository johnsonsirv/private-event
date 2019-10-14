Given("the user {string} has signed in") do |username|
	User.create(fullname: "Full Name", username: username)
	visit login_path
	fill_in "Username", with: username
	click_button "Login"
end

When("I submit event {string},{string},{string},{string}") do 
		|event_name, description, location, event_date|
  
	visit new_event_path
	
	fill_in "Name", with: event_name
  fill_in "Description", with: description
	fill_in "Location", with: location
	fill_in "Event Date", with: Date.parse(event_date)
	click_button "Add Event"
end


Then('I should see my event {string}') do |event|
  expect(page).to have_content /event/i
end