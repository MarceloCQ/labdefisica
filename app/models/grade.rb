class Grade < ActiveRecord::Base
  belongs_to :user, inverse_of: :grades
  belongs_to :practice, inverse_of: :grades
end