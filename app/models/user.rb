# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  student_id             :string           not null
#  mail                   :string
#  role                   :integer          default(1)
#  name                   :string
#  last_name              :string
#  active                 :boolean          default(FALSE)
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :record, inverse_of: :user
  has_many :groups, inverse_of: :user

  validates :student_id, presence: true
  validates :student_id, uniqueness: { case_sensitive: false }


  before_create :mail_construction

  def full_name
    "#{name} #{last_name}"
  end

  def email_required?
    false
  end

  private

  def mail_construction
    self.email = "#{self.student_id}@itesm.mx"
  end
end
