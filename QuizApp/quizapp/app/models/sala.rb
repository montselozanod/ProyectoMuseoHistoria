class Sala < ActiveRecord::Base
  has_many :preguntas
  belongs_to :exposicion
end
