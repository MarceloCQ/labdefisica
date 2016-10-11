class Record < ActiveRecord::Base
  belongs_to :teacher, inverse_of: :records
  belongs_to :group, inverse_of: :records
  belongs_to :user, inverse_of: :record
  has_many :scores, inverse_of: :record
end