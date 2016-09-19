class Registro < ActiveRecord::Base
  belongs_to :maestro, inverse_of: :registros
  belongs_to :grupo, inverse_of: :registros
  belongs_to :usuario, inverse_of: :registro
  has_many :calificaciones, inverse_of: :registro
end