
Given("the following events exist:") do |events|
	user = User.create(fullname: "Dummmyname", username: "dummyuser")
  events.hashes.each do |e|
		event = {name: e['name'], description: e['description'], 
						location: e['location'], event_date: e['event_date'],
						creator_id: user.id}
		Event.create(event)
	end
end

When("I follow the events path") do
  visit events_path
end

Then("I should see {string} and {string}") do |event_1, status|
 	expect(page).to have_content event_1
		expect(page).to have_content status
end

Then("also see {string} and {string}") do |event_2, status|
 	expect(page).to have_content event_2
	expect(page).to have_content status
end