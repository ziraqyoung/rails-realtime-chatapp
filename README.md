# RAILS REALTIME CHATAPP

## Introduction

A real-time chatapp \***\*ruby on rails 6\*\*** application that streams chatroom messages through action cable.
Implements **jquery**, **tailwindcss**, **webpacker**, **postgresql** database, **redis** database and **heroku**.

## Checkout live app **_[Live App](https://rails-realtime-chatapp.herokuapp.com/)_**

## Prerequisite

1. **Ruby 2.5.0** and up
2. **Postgresql** database for ActiveRecord
3. **Redis** server for ActionCable
4. **Node.js 10.0** and up

## Getting Started

- **Clone the repo from github**

        $ https://github.com/ziraqyoung/rails-realtime-chatapp.git

        $ cd rails-realtime-chatapp

        $ bundle install

        $ yarn install

- **Setup database credentials as shown in the ActiveRecord section this next command or create the database manually**


        $ rails db:create

- **Run the migrations**

        $ rails db:migrate

- **After setting configurations below**

       $ rails server

- **Viewing in the browser**

       http://localhost:3000

## Configurations

### ActionCable

For development: Set redis url in `config/cable.yml`. The default redis configuration will work

For production: set environment variable in a `.env` file or if using `heroku` get ENV variable for the [docs](https://devcenter.heroku.com/articles/config-vars)

```yml
# config/cable.yml
production:
  adapter: redis
  # url: <%= ENV.fetch("REDIS_URL") { "redis://localhost:6379/1" } %>
  url: <%= ENV["REDISTOGO_URL"] %>
  channel_prefix: rails_chat_tutorial_production
```

### ActiveRecord

Setup for default database credentials (development)

Use environment variables for production

```yml
# config/database.yml
default: &default
  adapter: postgresql
  encoding: unicode
  username: YOUR_DATABASE_CONNECTION_USERNAME
  password: YOUR_DATABASE_CONNECTION_PASSWORD
  # For details on connection pooling, see Rails configuration guide
  # https://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
```

And voila! Checkout my app version **_[Live App](https://rails-realtime-chatapp.herokuapp.com/)_**
