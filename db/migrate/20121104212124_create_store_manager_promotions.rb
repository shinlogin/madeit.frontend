class CreateStoreManagerPromotions < ActiveRecord::Migration
  def change
    create_table :store_manager_promotions do |t|

      t.timestamps
    end
  end
end
