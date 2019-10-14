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
		expect(page).to have_content /e['name']/i
		expect(page).to have_content /e['description']/i
		expect(page).to have_content /e['location']/i
		expect(page).to have_content /e['creator']/i
	end
end

Given("a list of events") do
   visit events_path
end

Given("the first event has attendees:") do |table|
	event = Event.first
  table.hashes.each do |u|
		user = User.create(fullname: u['fullname'], username: u['username'])
		AttendableEvent.new(
			attended_event: event,
			event_attendee: user).save
	end
end

When("I view first event details") do
  visit event_path Event.first
end

Then("I should see list of attendees:") do |table|
  table.hashes.each do |attendee|
		expect(page).to have_content attendee['fullname']
	end
end