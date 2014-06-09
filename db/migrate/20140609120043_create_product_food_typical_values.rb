class CreateProductFoodTypicalValues < ActiveRecord::Migration
  def change
    unless ActiveRecord::Base.connection.table_exists? :product_food_typical_values
      create_table :product_food_typical_values do |t|
        t.string :value
        t.integer :order
        t.string :itemprop
        t.timestamps
      end
    end
  end
end
