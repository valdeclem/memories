class Memory < ApplicationRecord
  belongs_to :user
  validates_presence_of :histoire, :title

  # map
  geocoded_by :adress
  after_validation :geocode
end
