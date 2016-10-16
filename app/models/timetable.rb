class Timetable < ActiveRecord::Base
  has_many :groups, inverse_of: :timetable
  enum day: [:Lunes, :Martes, :Miércoles, :Jueves, :Viernes, :Sábado]
end
