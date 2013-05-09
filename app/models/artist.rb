class Artist < ActiveRecord::Base
  attr_accessible :name, :band_ids

  has_many :band_memberships
  has_many :bands, :through => :band_memberships

  validates :name, :presence => true
end