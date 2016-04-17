class Exposicion < ActiveRecord::Base
  belongs_to :museo
  has_many :salas
end
