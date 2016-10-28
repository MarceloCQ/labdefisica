# == Schema Information
#
# Table name: course_teachers
#
#  id         :integer          not null, primary key
#  teacher_id :integer
#  course_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class CourseTeacher < ActiveRecord::Base
  belongs_to :course, inverse_of: :course_teachers
  belongs_to :teacher, inverse_of: :course_teachers

  validates :course_id, presence: true
  validates :teacher_id, presence: true
end
