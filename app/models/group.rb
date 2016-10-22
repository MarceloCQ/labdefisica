# == Schema Information
#
# Table name: groups
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  timetable_id :integer
#  classroom    :string
#  seats        :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Group < ActiveRecord::Base
  belongs_to :timetable, inverse_of: :groups
  belongs_to :user, inverse_of: :groups
  has_many :records, inverse_of: :group

  validates :timetable, presence: true
  validates :user, presence: true

  validates :classroom, presence: true
  validates :seats, presence: true
end
