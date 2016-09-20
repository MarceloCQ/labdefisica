class Maestro < ActiveRecord::Base
  has_many :registros, inverse_of: :maestro
end