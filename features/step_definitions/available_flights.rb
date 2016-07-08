Given(/^I am on the home page$/) do
  visit "/"
  page.should_not have_content("Book a Flight")
end

Given(/^I enter date, city, and passenger information$/) do
  select("BWI", from: "departure_airport_id")
  select("27/05/2016", from: "departure_time")
  select("2", from: "passengers")
end

When(/^I press the button to search for flights$/) do
  click_button("Search for flights")
end

Then(/^I should see a listing of available flights$/) do
    page.should have_content("Book a flight")
end

Then(/^the search form should still be present on the screen$/) do
  page.should have_content("I want to fly from")
  page.should have_content("And arrive at")
  page.should have_content("Departure date")
  page.should have_content("Passengers")
end
