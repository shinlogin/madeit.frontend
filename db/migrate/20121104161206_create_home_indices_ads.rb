class CreateHomeIndicesAds < ActiveRecord::Migration
  def change
    create_table :home_indices_ads do |t|

      t.timestamps
    end
  end
end
