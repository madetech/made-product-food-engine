made-product-food-engine
========================

This engine is an extension to the Made Product Engine, which can be found here:
  https://github.com/madebymade/made-product-engine

The model provided will inherit from Product::Item.

Add this to your Gemfile.
  gem 'product_food', :git => 'git://github.com/madebymade/made-product-engine.git'

To copy the migrations, run:
 rake product_food:install:migrations

bundle exec rake db:migrate

A sweeper needs to exist in the project that you are adding the engine to with the name product_all_sweeper

