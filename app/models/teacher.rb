class Teacher < ActiveRecord::Base
  has_many :records, inverse_of: :teacher

  def interpolate_name
  	"#{self.name} #{self.last_name}"
  end
end