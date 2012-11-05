class CreateHomeSearchesProducts < ActiveRecord::Migration
  def change
    create_table :home_searches_products do |t|

      t.timestamps
    end
  end
end
