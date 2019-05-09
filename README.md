# Sweater Weather
<a href="https://codeclimate.com/github/tmaria17/sweater-weather/maintainability"><img src="https://api.codeclimate.com/v1/badges/5f84aa2525d9e33a9b7f/maintainability" /></a>
<br>

Final solo project for Module 3 of Turing's Back-End Engineering program. This is a backend api endpoint application that will power a sperate front end application written in JavaScript. This app consumes the Google Geocode API, Dark Sky API, and Giphy API. This app has endpoints for: Forecast for a City, Account Creation, Logging in, Creating a Favorite City, Listing Favorites, and Deleting a Favorite, Weather based GIFs. 


Checkout the frontend application here: https://github.com/tmaria17/sweater-weather-fe
# Heroku Link
This displays the forecast endpoint:
https://safe-reaches-47529.herokuapp.com/api/v1/forecast?location=Denver,CO



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

## Current Weather
  GET https://safe-reaches-47529.herokuapp.com/api/v1/forecast?location=Denver,CO
  
  ```
  
  {
    "data": {
        "id": "denver,co",
        "type": "forecast_facade",
        "attributes": {
            "current_weather": {
                "id": null,
                "time": 1552070489,
                "summary": "Partly Cloudy",
                "icon": "partly-cloudy-day",
                "temperature": 52.28,
                "feels_like": 52.28,
                "humidity": 0.39,
                "visibility": 9.38,
                "uv_index": 4
            },
            "daily_weather": [
                {
                    "id": null,
                    "summary": "Foggy in the morning.",
                    "icon": "fog",
                    "time": 1552028400,
                    "temp_high": 55.2,
                    "temp_low": 32.99,
                    "chance_of_rain": 0.1
                },
                {
                    "id": null,
                    "summary": "Partly cloudy until afternoon.",
                    "icon": "partly-cloudy-day",
                    "time": 1552114800,
                    "temp_high": 48.44,
                    "temp_low": 27.47,
                    "chance_of_rain": 0.06
                },
                {
                    "id": null,
                    "summary": "Mostly cloudy throughout the day.",
                    "icon": "partly-cloudy-day",
                    "time": 1552201200,
                    "temp_high": 47.05,
                    "temp_low": 27.53,
                    "chance_of_rain": 0.05
                },
                {
                    "id": null,
                    "summary": "Mostly cloudy until afternoon.",
                    "icon": "partly-cloudy-day",
                    "time": 1552284000,
                    "temp_high": 51.38,
                    "temp_low": 32.51,
                    "chance_of_rain": 0.15
                },
                {
                    "id": null,
                    "summary": "Foggy overnight.",
                    "icon": "fog",
                    "time": 1552370400,
                    "temp_high": 56.29,
                    "temp_low": 34.95,
                    "chance_of_rain": 0.09
                }
            ],
            "hourly_weather": [
                {
                    "id": null,
                    "time": "11:00 AM",
                    "icon": "partly-cloudy-day",
                    "summary": "Partly Cloudy",
                    "temperature": 50.05
                },
                {
                    "id": null,
                    "time": "12:00 PM",
                    "icon": "partly-cloudy-day",
                    "summary": "Mostly Cloudy",
                    "temperature": 53.28
                },
                {
                    "id": null,
                    "time": "01:00 PM",
                    "icon": "partly-cloudy-day",
                    "summary": "Mostly Cloudy",
                    "temperature": 55.2
                },
                {
                    "id": null,
                    "time": "02:00 PM",
                    "icon": "partly-cloudy-day",
                    "summary": "Partly Cloudy",
                    "temperature": 55.13
                },
                {
                    "id": null,
                    "time": "03:00 PM",
                    "icon": "partly-cloudy-day",
                    "summary": "Partly Cloudy",
                    "temperature": 54.77
                },
                {
                    "id": null,
                    "time": "04:00 PM",
                    "icon": "partly-cloudy-day",
                    "summary": "Partly Cloudy",
                    "temperature": 54.5
                },
                {
                    "id": null,
                    "time": "05:00 PM",
                    "icon": "partly-cloudy-day",
                    "summary": "Mostly Cloudy",
                    "temperature": 52.76
                },
                {
                    "id": null,
                    "time": "06:00 PM",
                    "icon": "partly-cloudy-night",
                    "summary": "Mostly Cloudy",
                    "temperature": 50.21
                },
                {
                    "id": null,
                    "time": "07:00 PM",
                    "icon": "partly-cloudy-night",
                    "summary": "Mostly Cloudy",
                    "temperature": 46.62
                },
                {
                    "id": null,
                    "time": "08:00 PM",
                    "icon": "partly-cloudy-night",
                    "summary": "Mostly Cloudy",
                    "temperature": 43.46
                },
                {
                    "id": null,
                    "time": "09:00 PM",
                    "icon": "partly-cloudy-night",
                    "summary": "Mostly Cloudy",
                    "temperature": 42.01
                },
                {
                    "id": null,
                    "time": "10:00 PM",
                    "icon": "partly-cloudy-night",
                    "summary": "Mostly Cloudy",
                    "temperature": 41.56
                }
            ]
        }
    }
}


```

## Account Creation

```

POST api/v1/users
Content-Type: application/json
Accept: application/json

```

```

{
"email": "test_email_1@email.com",
"password": "abc123"
}

```

Response :

status: 201

body:

```

{
    "data": {
        "id": "10",
        "type": "user",
        "attributes": {
            "api_key": "GxYAs44_ZCw3Yqwu2Cc6NQ"
        }
    }
}

```



## Login

```

POST /api/v1/sessions
Content-Type: application/json
Accept: application/json

```

```

{
  "email": "test_email_1@example.com",
  "password": "abc123"

}

```

Response

status: 200

body:

```

{
    "data": {
        "id": "10",
        "type": "user",
        "attributes": {
            "api_key": "GxYAs44_ZCw3Yqwu2Cc6NQ"
        }
    }
}

```

## Favoriting Locations
```

POST /api/v1/favorites
Content-Type: application/json
Accept: application/json

```

```

{
  "api_key": "GxYAs44_ZCw3Yqwu2Cc6NQ",
  "location": "Denver, CO"
}

```
Response:

status: 200

body:

```

{
    "data": {
        "id": "4",
        "type": "favorite",
        "attributes": {
            "location": "Denver, CO",
            "current_weather": {
                "id": null,
                "time": 1552073663,
                "summary": "Partly Cloudy",
                "icon": "partly-cloudy-day",
                "temperature": 76.17,
                "feels_like": 76.17,
                "humidity": 0.52,
                "visibility": 10,
                "uv_index": 6
            }
        }
    }
}

```


## Listing Favorite Locations
```

GET /api/v1/favorites
Content-Type: application/json
Accept: application/json

```

```

{
  "api_key": ""GxYAs44_ZCw3Yqwu2Cc6NQ""
}

```

Response

status: 200

body:


```

{
    "data": {
        "id": "4",
        "type": "favorite",
        "attributes": {
            "location": "Denver, CO",
            "current_weather": {
                "id": null,
                "time": 1552073663,
                "summary": "Partly Cloudy",
                "icon": "partly-cloudy-day",
                "temperature": 76.17,
                "feels_like": 76.17,
                "humidity": 0.52,
                "visibility": 10,
                "uv_index": 6
            }
        }
    }
}

```

## Removing Favorite Locations
```

DELETE /api/v1/favorites
Content-Type: application/json
Accept: application/json

```

```

{
  "api_key": "GxYAs44_ZCw3Yqwu2Cc6NQ",
  "location":  "Denver, CO"
}

```

Response

status: 200



## Contributors

[Maria Torres](https://github.com/tmaria17)
