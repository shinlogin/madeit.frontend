class CreateStoreManagerIndicesUsers < ActiveRecord::Migration
  def change
    create_table :store_manager_indices_users do |t|

      t.timestamps
    end
  end
end
