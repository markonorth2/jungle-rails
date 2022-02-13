# Jungle

An e-commerce application built using Rails and PostgreSQL that allows users to choose and buy products. 

## Features

Has a produts page displaying all the products. 

When a product has 0 quantity, a sold out badge will be displayed on the product list page.

Users can add products to their cart. 

From their cart, they can add or remove products. They can also see the unit price and the total price of all their items. 



## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Run `bin/rake db:reset` to create, load and seed db
3. Create .env file based on .env.example
4. Sign up for a Stripe account
5. Put Stripe (test) keys into appropriate .env vars
6. Run `bin/rails sever` to start the server

## Stripe Testing

When checking out, use Credit Card # 4111 1111 1111 1111 for testing success scenarios. The expiration can be any date after today's date. The CVC can be any 3 digit number. 

Example: Credit Card # 4111 1111 1111 1111 Expiration: 05/25 CVC: 399

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe


