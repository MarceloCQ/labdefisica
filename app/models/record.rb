# == Schema Information
#
# Table name: records
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  group_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Record < ActiveRecord::Base
  belongs_to :group, inverse_of: :records
  belongs_to :user, inverse_of: :record
  has_many :scores, inverse_of: :record

  validates :group, presence: true
  validates :user, presence: true
end
