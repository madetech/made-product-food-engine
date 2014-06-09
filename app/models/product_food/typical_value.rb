module ProductFood
  class TypicalValue < ActiveRecord::Base
    attr_accessible                   :value,
                                      :order,
                                      :itemprop

    validates_presence_of             :value
    validates_uniqueness_of           :value

    default_scope                     :order => '`order` ASC'

    def to_s
      value
    end
  end
end
