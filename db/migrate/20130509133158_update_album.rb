class UpdateAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :live, :boolean
  end
end
