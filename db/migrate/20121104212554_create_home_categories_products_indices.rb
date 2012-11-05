class CreateHomeCategoriesProductsIndices < ActiveRecord::Migration
  def change
    create_table :home_categories_products_indices do |t|

      t.timestamps
    end
  end
end
