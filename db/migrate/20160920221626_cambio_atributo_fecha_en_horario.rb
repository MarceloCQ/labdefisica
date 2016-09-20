class CambioAtributoFechaEnHorario < ActiveRecord::Migration
  def change
  	add_column :horarios, :dia, :integer
  	remove_column :horarios, :fecha_hora
  	add_column :horarios, :hora, :time
  end
end
