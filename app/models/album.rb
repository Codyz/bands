class Album < ActiveRecord::Base
  attr_accessible :title, :band_id, :live

  belongs_to :band
  has_many   :tracks
  has_many   :songs, :through => :tracks

  validates :title, :presence => true
  validates :title, :uniqueness => { :scope => :band_id,
    :message => "band already has album by that title"}
end