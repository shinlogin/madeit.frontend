class CreateHomeCategoriesProductsIndicesPolicies < ActiveRecord::Migration
  def change
    create_table :home_categories_products_indices_policies do |t|

      t.timestamps
    end
  end
end
