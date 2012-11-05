class CreateStoreIndicesInformation < ActiveRecord::Migration
  def change
    create_table :store_indices_information do |t|

      t.timestamps
    end
  end
end
