class CreateStoreIndicesAds < ActiveRecord::Migration
  def change
    create_table :store_indices_ads do |t|

      t.timestamps
    end
  end
end
