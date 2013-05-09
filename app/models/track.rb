class Track < ActiveRecord::Base
  attr_accessible :album_id, :song_id, :track_num

  belongs_to :album
  belongs_to :song
  has_one :title, :through => :song

  validates :album_id, :presence => true
  validates :song_id, :presence => true
  validates :track_num, :uniqueness => { :scope => :album_id,
    :message => "album already has track at that position"}
end