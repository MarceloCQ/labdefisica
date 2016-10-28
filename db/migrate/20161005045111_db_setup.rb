class DbSetup < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.belongs_to :teacher, index: true
      t.string :student_id, null: false
      t.string :mail
      t.integer :role, default: 1 
      t.string :name
      t.string :last_name
      t.boolean :active, default: false
      t.timestamps
    end

    create_table :records do |t|
      t.belongs_to :user, index: true
      t.belongs_to :group, index: true
      t.timestamps
    end

    create_table :scores do |t|
      t.belongs_to :record, index: true
      t.float :score
      t.integer :practice_no
      t.timestamps
    end

    create_table :teachers do |t|
      t.string :name
      t.string :last_name
      t.timestamps
    end

    create_table :groups do |t|
      t.belongs_to :user, index: true
      t.belongs_to :timetable, index: true
      t.belongs_to :course, index: true
      t.string :classroom
      t.integer :seats
      t.timestamps
    end

    create_table :timetables do |t|
      t.integer :day
      t.time :start_time
      t.integer :duration
      t.timestamps
    end

    create_table :courses do |t|
      t.string :name
      t.timestamps
    end

    create_table :course_teachers do |t|
      t.belongs_to :teacher, index: true
      t.belongs_to :course, index: true
      t.timestamps
    end    
  end
end
