class Band < ActiveRecord::Base
  attr_accessible :name

  has_many :albums
  has_many :tracks, :through => :albums
  has_many :songs, :through => :tracks

  validates :name, :presence => true, :uniqueness => true
end