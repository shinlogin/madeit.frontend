class CreateHomeCartIndices < ActiveRecord::Migration
  def change
    create_table :home_cart_indices do |t|

      t.timestamps
    end
  end
end
