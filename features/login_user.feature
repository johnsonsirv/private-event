Feature: Register a new User
	In order to see a list of events I can attend
	As a user
	I want to log in with my username
	
Background:
	Given a user "Victor Okeugo" and username "vokeugo" exists in database
	And I am on the Private Events Home Page
	
Scenario Outline: Login with a username
	When I follow the Login link
	And I enter Username as <username>
	And I press "Login" button
	Then I should see <text> as my logged in username

	Examples:
		| username | text |
		| "vokeugo" | "vokeugo"|
		| "" | "Username not Found"|
		| "johnyd"| "Username not Found"|