class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :record, inverse_of: :user
  has_many :groups, inverse_of: :user

  def full_name
    "#{name} #{last_name}"
  end

  # before_create :mail_construction

  # private

  # def mail_construction
  #   self.email = "#{self.student_id}@itesm.mx"
  # end
end