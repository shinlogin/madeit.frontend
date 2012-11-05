class CreateStoreManagerProducts < ActiveRecord::Migration
  def change
    create_table :store_manager_products do |t|

      t.timestamps
    end
  end
end
