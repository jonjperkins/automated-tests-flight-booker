@flight_selection

Feature: Customers should be able to select the flight they want, and be taken to a page to fill out passenger info
  As a customer
  I want to select a particular flight
  So that I can reserve that flight with my personal information

Scenario: 
  Given I have searched for a flight
    And the available flights matching my search appear on the page
  When I select a particular flight and select 'Continue'
  Then I am taken to a page to fill out passenger information to reserve that flight
  
