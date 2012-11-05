class CreateStoreManagerAds < ActiveRecord::Migration
  def change
    create_table :store_manager_ads do |t|

      t.timestamps
    end
  end
end
