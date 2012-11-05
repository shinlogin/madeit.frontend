class CreateHomeCartSuccesses < ActiveRecord::Migration
  def change
    create_table :home_cart_successes do |t|

      t.timestamps
    end
  end
end
