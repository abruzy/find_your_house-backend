<h1 align="center">Welcome to FindHouse App 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.1.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://twitter.com/abruzy01" target="_blank">
    <img alt="Twitter: abruzy01" src="https://img.shields.io/twitter/follow/abruzy01.svg?style=social" />
  </a>
</p>

> This is a Ruby on Rails API from which the React frontend serves the data. It is a simple Rails app that has three models - User, Listing and Favourite. For the authentication of the users I used JSON Web Tokens. Inspiration from [this](https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-two) article series. The API is hosted on Heroku, at this endpoint: [FindHouse - API](https://findhouse-app-api.herokuapp.com) - But they can only be accessed with a valid API token

## Built With

- Major languages - Ruby
- frameworks - Ruby On Rails
- Linters - Rubocop
- Database - PostgreSQL

### ✨ Live Demo

[Live Demo Link](https://findhouse-app-api.herokuapp.com)

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

- nodejs must be installed on device

### Install

- Follow this steps according to get you running

1. clone the repo

```sh
git clone git@github.com:abruzy/find_your_house-backend.git
```
2. change directory 
```sh
cd find_your_house-backend
```

3. install dependencies

```sh
bundle install
```

```sh
yarn
```

4. start the project

```sh
rails s -p 3001
```

## Usage

  There are several endpoint in this API and we'll be discussing the functionalities of each endpoint

- POST - for user sign in
  ```sh
  /auth/login
  ```
- POST - for user sign up
  ```sh
  /signup
  ```
- GET - for fetching the listings
  ```sh
  /listings
  ```
- GET - for fetching one particular listing
  ```sh
  /listings/:id
  ```
- GET - for fetching favourites for the current user
- POST - for adding a favourite to the current users favourites list
- DELETE - for removing a favourite from the current users favourites list
  ```sh
  /favourites
  ```

## Author

👤 **Abubakar Diallo**

* Twitter: [@abruzy01](https://twitter.com/abruzy01)
* Github: [@abruzy](https://github.com/abruzy)
* LinkedIn: [@abubakardiallo](https://linkedin.com/in/abubakardiallo)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/abruzy/react-bookstore/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/)

## 📝 License

This project is [MIT](lic.url) licensed.