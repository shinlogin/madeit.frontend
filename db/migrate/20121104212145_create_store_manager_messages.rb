class CreateStoreManagerMessages < ActiveRecord::Migration
  def change
    create_table :store_manager_messages do |t|

      t.timestamps
    end
  end
end
