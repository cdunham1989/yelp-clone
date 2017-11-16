class AddUseridToRestaurants < ActiveRecord::Migration[5.1]
  def change
    change_table :restaurants do |t|
      t.belongs_to :user
    end
  end
end
