class CreateStorePoliciesAds < ActiveRecord::Migration
  def change
    create_table :store_policies_ads do |t|

      t.timestamps
    end
  end
end
