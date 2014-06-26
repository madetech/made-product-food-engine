module ProductFood
  class ProductLozenge < ActiveRecord::Base
    TYPES = ['Calories', 'Sugars', 'Fat', 'Saturates', 'Salts']

    attr_accessible :name, :value, :percentage, :product_item_id
    validates :name, presence: true, inclusion: { in: TYPES }, uniqueness: { scope: :product_item_id }
    validates :value, presence: true
    validates :percentage, presence: true

    belongs_to :item
  end
end
