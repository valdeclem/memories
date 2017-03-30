class Memory < ApplicationRecord
  belongs_to :user
  validates_presence_of :histoire, :title
end
