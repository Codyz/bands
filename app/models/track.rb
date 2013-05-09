class Track < ActiveRecord::Base
  attr_accessible :album_id, :song_id, :track_num, :bonus, :lyrics

  belongs_to :album
  belongs_to :song
  has_one :title, :through => :song
  has_one :band, :through => :album


  validates :album_id, :presence => true
  validates :song_id, :presence => true
  validates :track_num, :uniqueness => { :scope => :album_id,
    :message => "album already has track at that position"}
end