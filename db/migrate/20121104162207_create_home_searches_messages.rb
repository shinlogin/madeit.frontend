class CreateHomeSearchesMessages < ActiveRecord::Migration
  def change
    create_table :home_searches_messages do |t|

      t.timestamps
    end
  end
end
