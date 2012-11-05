class CreateHomeCategories < ActiveRecord::Migration
  def change
    create_table :home_categories do |t|

      t.timestamps
    end
  end
end
