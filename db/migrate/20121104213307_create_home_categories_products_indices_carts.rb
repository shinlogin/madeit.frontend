class CreateHomeCategoriesProductsIndicesCarts < ActiveRecord::Migration
  def change
    create_table :home_categories_products_indices_carts do |t|

      t.timestamps
    end
  end
end
