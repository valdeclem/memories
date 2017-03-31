class Mapg < ApplicationRecord
  belongs_to :memories
  geocoded_by :adress
  after_validation :geocode
end
