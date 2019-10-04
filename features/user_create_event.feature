Feature: Create new Event
	In order to be an event host
	As a registered user
	I want to create a new event

Background:
	Given the user "johnyd" has signed in
	
Scenario Outline: Create a new Event
	When I submit event <name>,<description>,<location>,<event_date>
	Then I should see my event <event>

	Examples:
		| name | description | location | event_date | event |
		| "Karl's birthday" | "1 year birthday party of my son Karl" | "My residence" | "Sep 25 2019" | "Karl's birthday" |