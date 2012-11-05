class CreateHomeCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :home_categories_products do |t|

      t.timestamps
    end
  end
end
