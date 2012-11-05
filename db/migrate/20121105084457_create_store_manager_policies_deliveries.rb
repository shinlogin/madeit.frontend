class CreateStoreManagerPoliciesDeliveries < ActiveRecord::Migration
  def change
    create_table :store_manager_policies_deliveries do |t|

      t.timestamps
    end
  end
end
