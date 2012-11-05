class CreateStorePolicies < ActiveRecord::Migration
  def change
    create_table :store_policies do |t|

      t.timestamps
    end
  end
end
