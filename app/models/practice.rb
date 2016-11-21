# == Schema Information
#
# Table name: practices
#
#  id          :integer          not null, primary key
#  group_id    :integer
#  name        :string
#  practice_no :integer
#  description :text
#

class Practice < ActiveRecord::Base
  belongs_to :group, inverse_of: :practices
  has_many :grades, inverse_of: :practice
  validates :group, presence: true

  after_create :create_grades
 
  private

  def create_grades
    group.students.each do |student|
      practice_student = Grade.find_by user_id: student.id, practice_id: self.id
      Grade.create(user_id: student.id, practice_id: self.id)
    end
  end
 end
