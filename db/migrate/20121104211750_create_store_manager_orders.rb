class CreateStoreManagerOrders < ActiveRecord::Migration
  def change
    create_table :store_manager_orders do |t|

      t.timestamps
    end
  end
end
