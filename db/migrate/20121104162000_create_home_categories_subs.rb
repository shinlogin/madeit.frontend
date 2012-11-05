class CreateHomeCategoriesSubs < ActiveRecord::Migration
  def change
    create_table :home_categories_subs do |t|

      t.timestamps
    end
  end
end
