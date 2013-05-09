class MoveLyricsColumn < ActiveRecord::Migration
  def change
    remove_column :songs, :lyrics
    add_column :tracks, :lyrics, :text
  end
end
