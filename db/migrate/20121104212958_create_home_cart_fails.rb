class CreateHomeCartFails < ActiveRecord::Migration
  def change
    create_table :home_cart_fails do |t|

      t.timestamps
    end
  end
end
