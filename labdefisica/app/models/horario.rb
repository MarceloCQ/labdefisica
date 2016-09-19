class Horario < ActiveRecord::Base
  has_many :grupos, inverse_of: :horario
end