class BandMembership < ActiveRecord::Base
  attr_accessible :artist_id, :band_id

  belongs_to :band
  belongs_to :artist

  validates :artist_id, :uniqueness => {:scope => :band_id,
    :message => "artist already belongs to the band"}
end