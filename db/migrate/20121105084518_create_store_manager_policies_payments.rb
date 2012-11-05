class CreateStoreManagerPoliciesPayments < ActiveRecord::Migration
  def change
    create_table :store_manager_policies_payments do |t|

      t.timestamps
    end
  end
end
