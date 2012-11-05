class CreateStoreManagerIndices < ActiveRecord::Migration
  def change
    create_table :store_manager_indices do |t|

      t.timestamps
    end
  end
end
