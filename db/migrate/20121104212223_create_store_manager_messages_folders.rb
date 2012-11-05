class CreateStoreManagerMessagesFolders < ActiveRecord::Migration
  def change
    create_table :store_manager_messages_folders do |t|

      t.timestamps
    end
  end
end
