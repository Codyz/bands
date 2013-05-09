class Song < ActiveRecord::Base
  attr_accessible :title

  has_many :tracks, :dependent => :destroy
  has_many :albums, :through => :tracks
  has_many :bands, :through => :albums

  validates :title, :presence => true
end