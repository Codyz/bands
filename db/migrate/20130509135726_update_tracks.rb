class UpdateTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :track_num, :integer
  end
end
