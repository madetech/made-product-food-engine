module ProductFood
  class Item < Product::Item
    self.table_name = "product_items"

    attr_accessible                 :ingredients,
                                    :allergy_information,
                                    :serving_detail,
                                    :serving_detail_attributes,
                                    :lozenges_attributes

    has_one                         :serving_detail, dependent: :destroy
    has_many                        :lozenges, dependent: :destroy
    accepts_nested_attributes_for   :serving_detail
    accepts_nested_attributes_for   :lozenges, allow_destroy: true

    validates_presence_of           :ingredients,
                                    :allergy_information,
                                    :serving_detail
  end
end
