class CreateHomeCategoriesProductsIndicesShops < ActiveRecord::Migration
  def change
    create_table :home_categories_products_indices_shops do |t|

      t.timestamps
    end
  end
end
