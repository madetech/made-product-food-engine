class CreateProductFoodServingValues < ActiveRecord::Migration
  def change
    unless ActiveRecord::Base.connection.table_exists? :product_food_serving_values
      create_table :product_food_serving_values do |t|
        t.integer :serving_detail_id
        t.string :serving_value
        t.string :large_value
        t.string :ri
        t.integer :typical_value_id
        t.text :small_print
        t.timestamps
      end
    end
  end
end
