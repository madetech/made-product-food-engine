module ProductFood
  class ServingDetail < ActiveRecord::Base
    attr_accessible                   :serving_size,
                                      :large_size,
                                      :small_print,
                                      :item_id,
                                      :serving_values_attributes,
                                      :serving_values

    belongs_to                        :item

    has_many                          :serving_values,
                                        include: :typical_value,
                                        order: '`product_food_typical_values`.`order`'

    accepts_nested_attributes_for     :serving_values, allow_destroy: true

    validates_presence_of             :serving_size,
                                      :large_size

    def to_s
      serving_size
    end
  end
end
