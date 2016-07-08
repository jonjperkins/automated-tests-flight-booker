@available_flights

Feature: Available flights should appear on the search page after the customer enters info and clicks 'Search for flights'
	As a customer 
	I want to see a list of available flights based on the info I provide
	So that I can select the best available flight for my trip

Scenario:
	Given I am on the home page
	  And I enter date, city, and passenger information
	When I press the button to search for flights
	Then I should see a listing of available flights below the search form
	  And the search form should still be present on the screen