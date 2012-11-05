class CreateHomeCartInformation < ActiveRecord::Migration
  def change
    create_table :home_cart_information do |t|

      t.timestamps
    end
  end
end
