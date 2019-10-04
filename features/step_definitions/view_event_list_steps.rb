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

Then("I should see events:") do |table|
	table.hashes.each do |e|
		expect(page).to have_content /e['name']/i
		expect(page).to have_content /e['description']/i
		expect(page).to have_content /e['location']/i
		expect(page).to have_content /e['event_date']/i
	end
end