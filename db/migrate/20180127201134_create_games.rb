class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :gameName
      t.integer :playerCount

      t.timestamps
    end
  end
end
