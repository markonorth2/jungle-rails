# Jungle

An e-commerce application built using Ruby on Rails and PostgreSQL that allows users to choose and buy products. 

## Features

Users can register, sign-in, and sign-out.

Has a produts page displaying all the products. 

When a product has 0 quantity, a sold out badge will be displayed on the product list page.

When shopping, users can sort by category. Categories include Apparel, Electronics, and Furniture.

Users can add products to their cart. 

From their cart, users can add or remove products. They can also see the unit price and the total price of all their items. 

Users can pay for their items with a credit card. 

If the payment is successful, an order confirmation page will be shown thanking the customer for their order. 

Admin functionality are protected by HTTP authentication. To access admin routes, user must enter HTTP auth login and password. 

Admin users can see how many products and categories the website has on their dashboard.  

Admin users can add new products. 

Admin users can add new categories. 

Users cannot sign up with an existing e-mail address (uniqueness validation). 

Passwords are not stored as plain text in the database. Instead, has_secure_password is used in the User model, leveraging the bcrypt gem. 




## Setup

1. Run `bundle install` to install dependencies
2. Run `bin/rake db:reset` to create, load and seed db
3. Create .env file based on .env.example
4. Sign up for a Stripe account
5. Put Stripe (test) keys into appropriate .env vars
6. Run `bin/rails sever` to start the server

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)


## Stripe Testing

When checking out, use Credit Card # 4111 1111 1111 1111 for testing success scenarios. The expiration can be any date after today's date. The CVC can be any 3 digit number. 

Example: Credit Card # 4111 1111 1111 1111 Expiration: 05/25 CVC: 399

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe


