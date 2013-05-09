class Band < ActiveRecord::Base
  attr_accessible :name

  has_many :albums
  has_many :tracks, :through => :albums
  has_many :songs, :through => :tracks
  has_many :band_memberships
  has_many :artists, :through => :band_memberships

  validates :name, :presence => true, :uniqueness => true
end