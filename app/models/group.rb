# == Schema Information
#
# Table name: groups
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  timetable_id :integer
#  course_id    :integer
#  classroom    :string
#  seats        :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Group < ActiveRecord::Base
  belongs_to :timetable, inverse_of: :groups
  belongs_to :course, inverse_of: :groups
  belongs_to :instructor, class_name: 'User', foreign_key: 'user_id' 
  
  has_many :records, inverse_of: :group
  has_many :students, class_name: 'User'
  has_many :practices, inverse_of: :group

  validates :timetable, presence: true
  validates :course, presence: true
  validates :instructor, presence: true

  validates :classroom, presence: true
  validates :seats, presence: true
end
