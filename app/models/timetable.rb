class Timetable < ActiveRecord::Base
  has_many :groups, inverse_of: :timetale
  enum day: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]

  def interpolate_day_time
    return "#{self.day_i18n} #{self.start_time.strftime("%H:%M")}"
  end
end