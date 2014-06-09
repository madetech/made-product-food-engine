class AddIngredientsAllergyInformationToProductItems < ActiveRecord::Migration
  def change
    add_column(:product_items, :ingredients, :text) unless column_exists? :product_items, :ingredients
    add_column(:product_items, :allergy_information, :text) unless column_exists? :product_items, :allergy_information
  end
end
