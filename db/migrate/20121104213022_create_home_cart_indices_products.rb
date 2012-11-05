class CreateHomeCartIndicesProducts < ActiveRecord::Migration
  def change
    create_table :home_cart_indices_products do |t|

      t.timestamps
    end
  end
end
