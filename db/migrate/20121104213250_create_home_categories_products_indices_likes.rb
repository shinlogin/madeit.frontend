class CreateHomeCategoriesProductsIndicesLikes < ActiveRecord::Migration
  def change
    create_table :home_categories_products_indices_likes do |t|

      t.timestamps
    end
  end
end
