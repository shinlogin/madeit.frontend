class CreateHomeIndicesCategories < ActiveRecord::Migration
  def change
    create_table :home_indices_categories do |t|

      t.timestamps
    end
  end
end
