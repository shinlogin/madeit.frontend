class CreateStoreManagerStatistics < ActiveRecord::Migration
  def change
    create_table :store_manager_statistics do |t|

      t.timestamps
    end
  end
end
