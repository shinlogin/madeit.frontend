class CreateHomeStores < ActiveRecord::Migration
  def change
    create_table :home_stores do |t|

      t.timestamps
    end
  end
end
