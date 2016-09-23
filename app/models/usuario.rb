class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  self.primary_key = 'matricula'
  has_one :registro, inverse_of: :usuario
  has_many :grupos, inverse_of: :usuario
end