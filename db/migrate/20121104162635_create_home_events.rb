class CreateHomeEvents < ActiveRecord::Migration
  def change
    create_table :home_events do |t|

      t.timestamps
    end
  end
end
