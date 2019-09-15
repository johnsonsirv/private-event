Feature: Register a new User
	In order to attend events
	As a user
	I want to create a new account with my name

Scenario: Visit Signup page
	Given I am on the Private Events Hompage
	When I follow the Signup link
	Then I should be on the New User Signup Page
	
Scenario: Create a username
	Given I am on the Signup page
	When I fill in Full Name with "John Doe"
	And I fill in Username with "johnyd"
	And I click "Submit"
	Then I should be on John Doe's homepage
	And I should see "johnyd"