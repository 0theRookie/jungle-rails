# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screenshots
[Home screen](https://github.com/0theRookie/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202018-12-14%20at%201.23.21%20PM.png)

[One of the Category pages](https://github.com/0theRookie/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202018-12-14%20at%201.23.34%20PM.png)

[Comment and Rate](https://github.com/0theRookie/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202018-12-14%20at%201.24.20%20PM.png)

[Cart order](https://github.com/0theRookie/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202018-12-14%20at%201.24.46%20PM.png)

[Order Receipt](https://github.com/0theRookie/jungle-rails/blob/master/app/assets/images/Screen%20Shot%202018-12-14%20at%201.25.10%20PM.png)