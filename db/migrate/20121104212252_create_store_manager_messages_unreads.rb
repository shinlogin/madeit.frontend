class CreateStoreManagerMessagesUnreads < ActiveRecord::Migration
  def change
    create_table :store_manager_messages_unreads do |t|

      t.timestamps
    end
  end
end
