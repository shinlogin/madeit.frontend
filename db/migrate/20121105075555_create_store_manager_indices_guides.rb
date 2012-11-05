class CreateStoreManagerIndicesGuides < ActiveRecord::Migration
  def change
    create_table :store_manager_indices_guides do |t|

      t.timestamps
    end
  end
end
