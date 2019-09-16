Feature: Register a new User
	In order to attend events
	As a user
	I want to create a new account with my name

Background:
	Given a user "Victor Okeugo" and username "vokeugo" exists in database
	And I am on the Private Events Hompage
	
Scenario Outline: Create a username
	When I follow the Signup link
	And I fill in Full Name with <fullname>
	And I fill in Username with <username>
	And I click "Submit"
	Then I should see <text>

	Examples:
		| fullname | username | text |
		| "John Doe" | "johnyd"| "johnyd"|
		| "" | "" | "Enter your name or username"|
		| "Enter a very Lenghty name above fifty 50 chracters Long"| "usernamebelowminlen"| "Name too Long - max 50 chars"|
		| "John Doe" | "j" | "Username too short or long, 3 - 16 chars"|
		| "Victor Okeugo" | "vokeugo" | "Username has already been taken" |