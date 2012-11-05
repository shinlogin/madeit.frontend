class CreateHomePromotions < ActiveRecord::Migration
  def change
    create_table :home_promotions do |t|

      t.timestamps
    end
  end
end
