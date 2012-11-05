class CreateHomeIndices < ActiveRecord::Migration
  def change
    create_table :home_indices do |t|

      t.timestamps
    end
  end
end
