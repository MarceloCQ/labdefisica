# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#

class Course < ActiveRecord::Base
  has_many :groups, inverse_of: :course
  has_many :course_teachers, inverse_of: :course
  has_many :teachers, through: :course_teachers, inverse_of: :courses
  
  validates :name, presence: true
end
