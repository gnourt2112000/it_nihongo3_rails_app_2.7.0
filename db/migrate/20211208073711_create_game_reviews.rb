class CreateGameReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :game_reviews do |t|
      t.integer :user_id
      t.integer :game_id
      t.text :review

      t.timestamps
    end
  end
end
