made-product-food-engine
========================

This engine is an extension to the Made Product Engine, which can be found here:
  https://github.com/madebymade/made-product-engine

The model provided will inherit from Product::Item.

## Installation

Add this line to your application's Gemfile:

    gem 'product_food', :git => 'git://github.com/madebymade/made-product-engine.git'

To copy the migrations from the engine to your application, run:
    rake product_food:install:migrations

    bundle exec rake db:migrate

