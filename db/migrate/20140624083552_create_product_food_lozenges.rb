class CreateProductFoodLozenges < ActiveRecord::Migration
  def change
    unless ActiveRecord::Base.connection.table_exists? :product_food_lozenges
      create_table :product_food_lozenges do |t|
        t.string     :name
        t.string     :value
        t.string     :percentage
        t.references :product_item
        t.timestamps
      end
    end
  end
end
