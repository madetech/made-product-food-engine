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

    validates_presence_of           :ingredients, if: Proc.new { |i| i.requires_ingredients? }
    validates_presence_of           :allergy_information, if: Proc.new { |i| i.requires_allergy_information? }
    validates_presence_of           :serving_detail, if: Proc.new { |i| i.requires_serving_detail? }

    def requires_ingredients?
      true
    end

    def requires_allergy_information?
      true
    end

    def requires_serving_detail?
      true
    end
  end
end
