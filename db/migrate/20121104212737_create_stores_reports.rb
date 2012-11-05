class CreateStoresReports < ActiveRecord::Migration
  def change
    create_table :stores_reports do |t|

      t.timestamps
    end
  end
end
