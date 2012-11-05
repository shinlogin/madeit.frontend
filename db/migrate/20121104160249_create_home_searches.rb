class CreateHomeSearches < ActiveRecord::Migration
  def change
    create_table :home_searches do |t|

      t.timestamps
    end
  end
end
