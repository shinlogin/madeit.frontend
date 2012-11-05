class CreateHomeCategoriesProductsIndicesDescriptions < ActiveRecord::Migration
  def change
    create_table :home_categories_products_indices_descriptions do |t|

      t.timestamps
    end
  end
end
