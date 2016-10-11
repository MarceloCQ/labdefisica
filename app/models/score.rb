class Score < ActiveRecord::Base
  belongs_to :record, inverse_of: :scores
end