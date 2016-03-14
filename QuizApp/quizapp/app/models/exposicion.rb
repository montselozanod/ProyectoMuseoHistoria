class Exposicion < ActiveRecord::Base
  has_many :salas
  belongs_to :museo
end
