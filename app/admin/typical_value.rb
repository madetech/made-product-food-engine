if defined?(ActiveAdmin)
  ActiveAdmin.register ProductFood::TypicalValue, { :sort_order => :order } do
    controller do
      cache_sweeper :product_all_sweeper
    end

    menu :label => "Nutritional Units", :parent => "Products", :priority => 4

    filter :value
    filter :created_at

    form do |f|
      f.inputs "Nutritional Value" do
        f.input     :value,
                    :hint => 'e.g. Energy (kJ)'

        f.input     :itemprop,
                    :hint => "taken from #{link_to 'Schema.org','http://schema.org/NutritionInformation',
                      :target => '_blank'} where appropriate".html_safe

        f.input     :order
      end

      f.actions
    end

    index :title => 'Nutritional Values' do
      column :value
      column :order
      column :created_at
      column :updated_at
      default_actions
    end

    show :title => 'Nutritional Value' do |item|
      attributes_table do
        row :value
        row :order
        row :itemprop
      end
    end
  end
end
