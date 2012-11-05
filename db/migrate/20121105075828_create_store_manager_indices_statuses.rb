class CreateStoreManagerIndicesStatuses < ActiveRecord::Migration
  def change
    create_table :store_manager_indices_statuses do |t|

      t.timestamps
    end
  end
end
