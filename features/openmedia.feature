Feature:	A Web-based exchange to enable municipalities to easily publish, and citizens to access, government open data
	In order to publish or access government open data
	The users 
	Should be able to visit our web site

Scenario: The application has a home page
	Given I do have a web application
	When I visit the home page
	Then I should see the home page with title "Civic OpenMedia"
