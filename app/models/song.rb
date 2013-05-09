class Song < ActiveRecord::Base
  attr_accessible :title, :lyrics

  has_many :tracks
  has_many :albums, :through => :tracks
  has_many :bands, :through => :albums

  validates :title, :presence => true
end