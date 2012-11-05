class CreateHomeIndicesProducts < ActiveRecord::Migration
  def change
    create_table :home_indices_products do |t|

      t.timestamps
    end
  end
end
