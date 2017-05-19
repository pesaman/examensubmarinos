class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.belongs_to :user, index: true
      t.integer :submarino
      t.string :ganador

      t.timestamps
    end
  end
end
