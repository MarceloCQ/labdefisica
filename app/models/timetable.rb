class Timetable < ActiveRecord::Base
  has_many :groups, inverse_of: :timetale
end