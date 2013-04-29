Feature: User can self register and manage account
	In order to author content and access system features
	As site visitor 
	I should be able to add and remove my user account
	
Scenario: User can create an account
	Given the following user records
	 | name           | password | time_zone                              |
	 | jdoe@gmail.com | sekret13 | UTC |
	When the user visits the sign up page
	Then show me the page
	# And clicks the "Sign up" button
	# Then she should successfully create a new account named "jdoe@gmail.com"

Scenario: User is greeted upon signing in
	Given the user has an account
	When she signs in
	Then she should see "jdoe@gmail.com"

Scenario: User can cancel their account
	Given the user has an account
	And she signs in
	When the user visits the edit user page
	And clicks the "Cancel my account" link
	Then the user "jdoe@gmail.com" should be deleted
