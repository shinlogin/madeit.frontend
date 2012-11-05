class CreateStoreManagerProductsReviews < ActiveRecord::Migration
  def change
    create_table :store_manager_products_reviews do |t|

      t.timestamps
    end
  end
end
