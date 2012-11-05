class CreateStoreIndices < ActiveRecord::Migration
  def change
    create_table :store_indices do |t|

      t.timestamps
    end
  end
end
