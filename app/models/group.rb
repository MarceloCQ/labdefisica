class Group < ActiveRecord::Base
  belongs_to :timetable, inverse_of: :groups
  belongs_to :user, inverse_of: :groups
  has_many :records, inverse_of: :group
end