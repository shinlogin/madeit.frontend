class CreateStoreManagerSettings < ActiveRecord::Migration
  def change
    create_table :store_manager_settings do |t|

      t.timestamps
    end
  end
end
