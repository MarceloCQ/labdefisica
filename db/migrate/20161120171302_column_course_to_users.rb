class ColumnCourseToUsers < ActiveRecord::Migration
  def change
  	add_reference :users, :course, index: true
    add_foreign_key :users, :courses
  end
end
