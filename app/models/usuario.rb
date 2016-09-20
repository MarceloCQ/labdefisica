class Usuario < ActiveRecord::Base
  self.primary_key = 'matricula'
  has_one :registro, inverse_of: :usuario
  has_many :grupos, inverse_of: :usuario
end