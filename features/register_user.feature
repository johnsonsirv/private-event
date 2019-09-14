Feature: Register a new User
	In order to attend events
	As a user
	I want to create a new account with my name

Scenario: Visit Signup page
	Given I am on the Private Events Hompage
	When I follow the Signup link
	Then I should be on the New User Signup Page