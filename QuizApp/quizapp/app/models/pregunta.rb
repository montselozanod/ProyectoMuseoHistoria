class Pregunta < ActiveRecord::Base
  belongs_to :sala
  has_many :answers
  belongs_to :answer
end
