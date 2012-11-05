class CreateHomeIndicesShops < ActiveRecord::Migration
  def change
    create_table :home_indices_shops do |t|

      t.timestamps
    end
  end
end
