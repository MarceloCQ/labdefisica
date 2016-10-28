# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  name       :string
#  last_name  :string
#  created_at :datetime
#  updated_at :datetime
#

class Teacher < ActiveRecord::Base
  has_many :users, inverse_of: :teacher
  has_many :course_teachers, inverse_of: :teacher
  has_many :courses, through: :course_teachers, inverse_of: :teachers
  
  validates :name, presence: true
  validates :last_name, presence: true
  
  def interpolate_name
  	"#{self.name} #{self.last_name}"
  end
end
