class RenameGamesToGame < ActiveRecord::Migration
  def change
    rename_table :games, :game
  end
end
