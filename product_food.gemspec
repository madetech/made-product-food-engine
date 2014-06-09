$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "product_food/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "product_food"
  s.version     = ProductFood::VERSION
  s.authors     = ["Chris Blackburn"]
  s.email       = ["chris@madebymade.co.uk"]
  s.homepage    = "http://www.madebymade.co.uk/"
  s.summary     = "Product food engine."
  s.description = "Rails engine that provides the functionality required to add food-based products to a site"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.11"
end
