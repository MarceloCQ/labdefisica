class Practice < ActiveRecord::Base
  belongs_to :user, inverse_of: :practices
  belongs_to :group, inverse_of: :practices

  validates :group, presence: true
end