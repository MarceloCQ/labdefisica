class DbSetup < ActiveRecord::Migration
  def change
    create_table :usuarios, id: false do |t|
      t.string :matricula, null: false
      t.string :correo
      t.integer :rol
      t.string :nombre
      t.string :apellidos
      t.string :password
      t.timestamps
    end

    create_table :registros do |t|
      t.belongs_to :usuario, index: true
      t.belongs_to :grupo, index: true
      t.belongs_to :maestro, index: true
      t.string :materia
      t.timestamps
    end

    create_table :calificaciones do |t|
      t.belongs_to :registro, index: true
      t.float :calificacion
      t.integer :numero_practica
      t.timestamps
    end

    create_table :maestros do |t|
      t.string :nombre
      t.string :apellidos
      t.string :materia
      t.timestamps
    end

    create_table :grupos do |t|
      t.belongs_to :usuario, index: true
      t.belongs_to :horario, index: true
      t.string :salon
      t.integer :lugares
      t.timestamps
    end

    create_table :horarios do |t|
      t.datetime :fecha_hora
      t.integer :duracion
      t.timestamps
    end  
  end
end
