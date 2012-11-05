class CreateStoreIndicesDeliveries < ActiveRecord::Migration
  def change
    create_table :store_indices_deliveries do |t|

      t.timestamps
    end
  end
end
