class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :opponent_id
      t.int :user_score
      t.int :opponent_score
      t.date :date

      t.timestamps null: false
    end

    add_index :games, :user_id
    add_index :games, :opponent_id

  end
end
