Feature: Create new Event
	In order to be an event host
	As a registered user
	I want to create a new event

Background:
	Given I am logged in as "John Doe" and username "johnyd"
	
Scenario Outline: Create a username
	When I follow New Event link
	And I fill in Name with <name>
	And I fill in Description with <description>
	And I fill in Location with <location>
	And I fill in Event Date with <event_date>
	And I click "Add Event"
	Then I should see <text>

	Examples:
		| name | description | location | event_date | text |
		| "Karl's birthday" | "1 year birthday party of my son Karl" | "My residence" | "Sep 25 2019" | "Karl's birthday" |