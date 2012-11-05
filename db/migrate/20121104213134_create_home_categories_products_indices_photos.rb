class CreateHomeCategoriesProductsIndicesPhotos < ActiveRecord::Migration
  def change
    create_table :home_categories_products_indices_photos do |t|

      t.timestamps
    end
  end
end
