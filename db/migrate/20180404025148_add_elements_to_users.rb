class AddElementsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :rank, :integer, :null => false, :default => 0
  	add_column :users, :name, :string
  	add_column :users, :score, :integer, :null => false, :default => 0
  	add_column :users, :played_games, :integer, :null => false, :default => 0
  end
end
