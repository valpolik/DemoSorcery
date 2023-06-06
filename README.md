# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# About:
This is demonstration of user authentication with gem Sorcery. Used submodules: remember_me, user_activation, brute_force_protection, activity_logging, reset_password. Emails are sent in background task using gem DelayedJob.

# Requirements:
* ruby 2.7.8
* bundler 2.1.4

# Setup:
* bundle install
* bundle exec rails db:migrate
* Terminal 1: bundle exec rails jobs:work
* Terminal 2: bundle exec rails server
