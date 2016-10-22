# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  name       :string
#  last_name  :string
#  course     :string
#  created_at :datetime
#  updated_at :datetime
#

class Teacher < ActiveRecord::Base
  has_many :records, inverse_of: :teacher
  validates :name, presence: true
  validates :last_name, presence: true
  validates :course, presence: true
  
  def interpolate_name
  	"#{self.name} #{self.last_name}"
  end
end
