Feature: Display details of single event
	In order to attend an event
	As a registered user
	I want to see details of an event

Background:
	Given the user "johnyd" has signed in
	And the following events exist in database:
	| name | description | location | event_date |
	| "R-o-Rails meetup" | "Ruby on rails developer meetup" | "Events Hub Lagos" | "Nov 26 2022" |
	| "Karl's birthday" | "1 year birthday party" | "My residence" | "Sep 23 2019" |
	
Scenario: View event details
	Given I can see list of events
	When I select the first event
	Then I should see:
	| name | description | location | creator |
	| "R-o-Rails meetup" | "Ruby on rails developer meetup" | "Events Hub Lagos" | dummyuser |
	

Scenario: Display event attendees
	Given a list of events
	And the first event has attendees:
	| fullname | username |
	| "Victor Okeugo" | "vokeugo" |
	| "Donald Trump"	| "dtrump"	|
	When I view first event details
	Then I should see list of attendees:
	| fullname |
	| Victor Okeugo | 
	| Donald Trump	|