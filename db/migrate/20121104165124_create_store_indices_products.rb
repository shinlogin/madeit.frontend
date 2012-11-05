class CreateStoreIndicesProducts < ActiveRecord::Migration
  def change
    create_table :store_indices_products do |t|

      t.timestamps
    end
  end
end
