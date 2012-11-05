class CreateStoreManagerPolicies < ActiveRecord::Migration
  def change
    create_table :store_manager_policies do |t|

      t.timestamps
    end
  end
end
