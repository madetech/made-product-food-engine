module ProductFood
  class ServingValue < ActiveRecord::Base
    attr_accessible                   :serving_value,
                                      :large_value,
                                      :ri,
                                      :serving_detail_id,
                                      :typical_value_id

    belongs_to                        :serving_detail

    belongs_to                        :typical_value

    validates_presence_of             :serving_value,
                                      :large_value

    validates                         :typical_value_id, :uniqueness => { :scope => :serving_detail_id }

    def to_s
      serving_value
    end
  end
end
