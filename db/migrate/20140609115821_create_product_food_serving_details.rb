class CreateProductFoodServingDetails < ActiveRecord::Migration
  def change
    unless ActiveRecord::Base.connection.table_exists? :product_food_serving_details
      create_table :product_food_serving_details do |t|
        t.integer :item_id
        t.string :serving_size
        t.string :large_size
        t.text :small_print
        t.timestamps
      end
    end
  end
end

