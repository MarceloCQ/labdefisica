class Calificacion < ActiveRecord::Base
  self.table_name = "calificaciones"
  belongs_to :registro, inverse_of: :calificaciones
end