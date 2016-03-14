class Pregunta < ActiveRecord::Base
  belongs_to :sala
  belongs_to :answer
end
