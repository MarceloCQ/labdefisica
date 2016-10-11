class Teacher < ActiveRecord::Base
  has_many :records, inverse_of: :teacher
end