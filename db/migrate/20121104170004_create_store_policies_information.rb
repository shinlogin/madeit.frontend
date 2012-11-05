class CreateStorePoliciesInformation < ActiveRecord::Migration
  def change
    create_table :store_policies_information do |t|

      t.timestamps
    end
  end
end
