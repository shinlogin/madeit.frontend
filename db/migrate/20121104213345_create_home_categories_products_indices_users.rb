class CreateHomeCategoriesProductsIndicesUsers < ActiveRecord::Migration
  def change
    create_table :home_categories_products_indices_users do |t|

      t.timestamps
    end
  end
end
