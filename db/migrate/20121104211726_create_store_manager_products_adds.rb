class CreateStoreManagerProductsAdds < ActiveRecord::Migration
  def change
    create_table :store_manager_products_adds do |t|

      t.timestamps
    end
  end
end
