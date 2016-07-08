Given(/^I have searched for a flight$/) do
  visit "/"
  select("BWI", from: "departure_airport_id")
  select("27/05/2016", from: "departure_time")
  select("2", from: "passengers")
  click_button("Search for flights")
end

Given(/^the available flights matching my search appear on the page$/) do
  flight_table = page.all('table#available_flights td:nth-child(3)').map{|td| td.text}
  expect(flight_table).to include("BWI")
end

When(/^I select a particular flight and select 'Continue'$/) do
  choose("flight_id_148")
  click_button("Continue")
end

Then(/^I am taken to a page to fill out passenger information to reserve that flight$/) do
  page.should have_content("Please enter flight details below")
end