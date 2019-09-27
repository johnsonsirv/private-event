Given("the following events exist in database:") do |events|
	user = User.create(fullname: "Dummmyname", username: "dummyuser")
  events.hashes.each do |e|
		event = {name: e['name'], description: e['description'], 
						location: e['location'], event_date: e['event_date'],
						creator_id: user.id}
		Event.create(event)
	end
end

Given("I can see list of events") do
  visit events_path
end

When("I select the first event") do
  visit event_path Event.first
end

Then("I should see:") do |table|
	table.hashes.each do |e|
		expect(page).to have_content e['name']
		expect(page).to have_content e['description']
		expect(page).to have_content e['location']
		expect(page).to have_content e['creator']
	end
end