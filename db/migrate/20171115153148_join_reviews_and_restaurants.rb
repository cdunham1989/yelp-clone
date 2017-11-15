class JoinReviewsAndRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :reviews do |t|
      t.belongs_to :restaurant, index: true
      t.string :rating
      t.text :description

      t.timestamps
    end
  end
end
