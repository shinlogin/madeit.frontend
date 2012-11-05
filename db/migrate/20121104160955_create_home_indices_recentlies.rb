class CreateHomeIndicesRecentlies < ActiveRecord::Migration
  def change
    create_table :home_indices_recentlies do |t|

      t.timestamps
    end
  end
end
