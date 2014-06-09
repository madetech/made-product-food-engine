require "product_food/engine"

module ProductFood
  mattr_accessor :engine_active_admin
  @@engine_active_admin = true

  class Engine < Rails::Engine
    isolate_namespace ProductFood

    initializer :product do
      ActiveAdmin.application.load_paths.unshift Dir[ProductFood::Engine.root.join('app', 'admin')] if defined?(ActiveAdmin)
    end
  end

  def self.config(&block)
    yield self if block
    return self
  end
end
