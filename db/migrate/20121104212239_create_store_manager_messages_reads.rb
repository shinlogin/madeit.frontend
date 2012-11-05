class CreateStoreManagerMessagesReads < ActiveRecord::Migration
  def change
    create_table :store_manager_messages_reads do |t|

      t.timestamps
    end
  end
end
