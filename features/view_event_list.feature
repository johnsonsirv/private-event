Feature: Display list of events
	In order to attend an event
	As a registered user
	I want to see list of events

Background:
	Given the user "johnyd" has signed in
	And the following events exist:
	| name | description | location | event_date |
	| "R-o-Rails meetup" | "Ruby on rails developer meetup" | "Events Hub Lagos" | "Nov 26 2022" |
	| "Karl's birthday" | "1 year birthday party" | "My residence" | "Sep 23 2019" |
	
Scenario: View list of events
	When I follow the events path
	Then I should see events:
	| name | description | location | event_date |
	| "R-o-Rails meetup" | "Ruby on rails developer meetup" | "Events Hub Lagos" | "Nov 26 2022" |
	| "Karl's birthday"  | "1 year birthday party" | "My residence" | "Sep 23 2019" |