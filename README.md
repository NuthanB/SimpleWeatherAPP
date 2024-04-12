# Weather App

This is a simple weather app built using Flutter that displays the current weather conditions of a city.

## Features

- Fetches the current weather data from an API.
- Displays the city name, temperature, and main weather condition.
- Shows an animated representation of the weather condition.
- Handles different weather conditions such as sunny, cloudy, rainy, etc.

## Installation

To run this app locally, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the project directory.
3. Ensure you have Flutter installed on your system.
4. Run `flutter pub get` to install dependencies.
5. Run the app using `flutter run`.

## API Key

This app requires an API key to fetch weather data. Ensure you have a valid API key and replace the placeholder in the code with your own API key.

## Dependencies

This app uses the following dependencies:

- `flutter/material.dart`: Material design widgets for building Flutter applications.
- `lottie/lottie.dart`: Library for displaying Lottie animations in Flutter.
- `weather/services/weather_services.dart`: Custom service class for fetching weather data.
- `models/weather_modal.dart`: Model class for representing weather data.

## Usage

1. Upon launching the app, it will attempt to fetch the current weather data of the device's location.
2. If successful, it will display the city name, temperature, and main weather condition.
3. An animated representation of the weather condition will also be displayed.
4. If the weather data cannot be fetched, an error message will be shown.

## Weather Animations

Weather animations are chosen based on the main weather condition obtained from the API response. The following animations are used:

- **Sunny**: `sunny.json`
- **Cloudy, Mist, Smoke, Haze, Dust, Fog**: `Clouds.json`
- **Rain, Drizzle, Shower Rain**: `rainy.json`
- **Thunderstorm**: `thunder.json`


