Feature: Log a user out of session
	In order not to continue seeing list of events
	As a user
	I want to logout from my existing session
	
Background:
	Given I am logged in as "Victor Okeugo" with username "vokeugo"
	
Scenario: Login with a username
	When I click Logout
	Then I should be on the Login Page
	And I should not see "vokeugo"

