# == Schema Information
#
# Table name: scores
#
#  id          :integer          not null, primary key
#  record_id   :integer
#  score       :float
#  practice_no :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Score < ActiveRecord::Base
  belongs_to :record, inverse_of: :scores
  
  validates :record, presence: true
  validates :score, presence: true
  validates :practice_no, presence: true
end
