class CreateHomeCategoriesCategories < ActiveRecord::Migration
  def change
    create_table :home_categories_categories do |t|

      t.timestamps
    end
  end
end
