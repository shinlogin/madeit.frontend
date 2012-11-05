class CreateStoreManagerReviews < ActiveRecord::Migration
  def change
    create_table :store_manager_reviews do |t|

      t.timestamps
    end
  end
end
