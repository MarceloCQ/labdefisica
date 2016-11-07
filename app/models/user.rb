# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  teacher_id             :integer
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
  
  belongs_to :teacher, inverse_of: :users
  belongs_to :group, inverse_of: :students
  has_one :record, inverse_of: :user
  has_many :groups, inverse_of: :instructor
  has_many :grades, inverse_of: :user

  validates :student_id, presence: true
  validates :student_id, uniqueness: { case_sensitive: false }
  validates :name, presence: true
  validates :last_name, presence: true

  before_create :mail_construction

  accepts_nested_attributes_for :grades, allow_destroy: true

  def full_name
    "#{name} #{last_name}"
  end

  def role_name
    return "Administrador" if self.role == 3
    return "Instructor" if self.role == 2
    return "Alumno" if self.role == 1
  end

  def email_required?
    false
  end

  def retrieve_groups
    return Group.all if self.role == 3
    return Group.where(user_id: self.id) if self.role == 2
    Group.all
  end


  private

  def mail_construction
    self.email = "#{self.student_id}@itesm.mx"
  end
end
