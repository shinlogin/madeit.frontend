class CreateStoreRegisters < ActiveRecord::Migration
  def change
    create_table :store_registers do |t|

      t.timestamps
    end
  end
end
