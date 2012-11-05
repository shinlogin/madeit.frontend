class CreateHomeSearchesAds < ActiveRecord::Migration
  def change
    create_table :home_searches_ads do |t|

      t.timestamps
    end
  end
end
