module ProductFood
  class Lozenge < ActiveRecord::Base
    TYPES = ['Energy', 'Sugars', 'Fat', 'Saturates', 'Salts']

    belongs_to      :item

    attr_accessible :name, :value, :percentage, :item_id
    validates       :name, presence: true, inclusion: { in: TYPES }, uniqueness: { scope: :item_id }
    validates       :value, presence: true
    validates       :percentage, presence: true

  end
end
