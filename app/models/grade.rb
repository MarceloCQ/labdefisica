# == Schema Information
#
# Table name: grades
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  practice_id :integer
#  grade       :integer
#

class Grade < ActiveRecord::Base
  belongs_to :user, inverse_of: :grades, dependent: :destroy
  belongs_to :practice, inverse_of: :grades
end
