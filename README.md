# Rails Template

Everyone has their preferred stack, this is mine:

## Authentication

* Devise
* CanCan

## Asset Pipeline

* Compass

## Testing

* RSpec
* Capybara
* Poltergeist
* FactoryGirl
* Guard

## Setup

1. clone the repo
2. change references to RailsTemplate in the following:
  * `Rakefile`
  * `config/application.rb`
  * `config/environment.rb`
  * `config/environments/*`
  * `config/initializers/session_store.rb`
  * `config/initializers/secret_token.rb`
  * `config/routes.rb`
  * `spec/spec_helper.rb`
  * `config.ru`
3. Generate a new session secret by running `rake secret`
