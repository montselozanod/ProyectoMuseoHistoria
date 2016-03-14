class Pregunta < ActiveRecord::Base
  belongs_to :sala
  has_many :answers
end
