class CreateHomeCategoriesProductsReports < ActiveRecord::Migration
  def change
    create_table :home_categories_products_reports do |t|

      t.timestamps
    end
  end
end
