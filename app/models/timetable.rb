# == Schema Information
#
# Table name: timetables
#
#  id         :integer          not null, primary key
#  day        :integer
#  start_time :time
#  duration   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Timetable < ActiveRecord::Base
  has_many :groups, inverse_of: :timetale
  enum day: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]

  validates :day, presence: true
  validates :start_time, presence: true
  validates :duration, presence: true

  def interpolate_day_time
    return "#{self.day_i18n} #{self.start_time.strftime("%H:%M")}"
  end
end
