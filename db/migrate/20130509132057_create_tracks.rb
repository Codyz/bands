class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :album_id
      t.integer :song_id
      t.boolean :bonus
      t.timestamps
    end
  end
end
