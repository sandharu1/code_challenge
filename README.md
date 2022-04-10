# <p align="center">Login Temperature Web App</p>


## About the Login Temperature Web App

This is a web application that collects the current temperatures of two cities from the Open Weather API and stores and lists them in the system.:

## Built With

This app was built with the Laravel backend and VueJS frontend. Starter Kit  Breeze is used as basic scaffolding of Vue with authentication and the user can register and login into the system.
The main task of the app is to collect temperatures when users log-in. For that purpose, I used Laravel events and listeners. If the user has been successfully authenticated, the "User Login" event will be dispatched. Then it is connected with the "Retrieve Temperature Data" listeners, and the listeners process the data collection and storage process. For temperature collection, "Open Weather One Call API" was used here with metric units, and unwanted objects are excluded. Defined Celsius to Fahrenheit conversion method in a trait. 

The VueJS is used for frontend development and the Options API is used as an application structure. The list of temperatures is loaded into the dashboard's Vue component, and a separate component is used for pagination. Dynamically load tables and city temperature data. For the current scenario, general pagination and filtering are included, assuming the number of datasets will be the same.


- [Laravel 9 with Breeze Starter Kit](https://laravel.com/docs/9.x/starter-kits).
- [Vue 3](https://vuejs.org/).
- [Open Weather One Call API](https://openweathermap.org/api/one-call-api).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Setup Guid

- clone project from GitHub.
- cp `.env.example` `.env` and config app url, database and "Open Weather One Call API Key" as a OWM_API_KEY.
- run `composer install` command
- generate application key using `php artisan key:generate` command.
- run `php artisan migrate` command. You can register and use it as fresh, but if you need existing data, use the SQL data dump inside the backups folder. `(sandharu1@gmail.com | 12345678)`.
- run `npm install` and `npm run dev` command

