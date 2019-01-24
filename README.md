# Sweater Weather
<a href="https://codeclimate.com/github/tmaria17/sweater-weather/maintainability"><img src="https://api.codeclimate.com/v1/badges/5f84aa2525d9e33a9b7f/maintainability" /></a>
<br>
Final solo project for Module 3 of Turing's Back-End Engineering program. This is a backend api endpoint application that will power a sperate front end application. This app consumes the Google Geocode API, Dark Sky API, and Giphy API.

Checkout the frontend application (WIP) here: https://github.com/tmaria17/sweater-weather-fe
# Heroku Link
https://safe-reaches-47529.herokuapp.com/api/v1/forecast?location=Denver,CO

#Forecast Information 
GET https://safe-reaches-47529.herokuapp.com/api/v1/forecast?location=Denver,CO


# Prerequisites/ Dependencies
 This project assumes you have installed: 
 * Ruby 2.4.1
 * Rails 5.2.1
 * Faraday
 * Figaro
 * Byebug
 * Capybara
 * Faraday
 * Figaro
 * Launchy
 * Pry
 * Shoulda-Matchers
 * SimpleCov
 * VCR
 * Webmock

## Installing

1. Clone down the repo:

` git clone git@github.com:tmaria17/sweater-weather.git`

2. Run:

`bundle install`

`bundle update`

3. Setup the database:

 `rake db:setup`



## Running the tests
To run the full testing suite, run `rspec` from the command line.




## Contributors

[Maria Torres](https://github.com/tmaria17)


