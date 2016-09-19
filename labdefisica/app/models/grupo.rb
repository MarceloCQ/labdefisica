class Grupo < ActiveRecord::Base
  belongs_to :horario, inverse_of: :grupos
  belongs_to :usuario, inverse_of: :grupos
  has_many :registros, inverse_of: :grupo
end