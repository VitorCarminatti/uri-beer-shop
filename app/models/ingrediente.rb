class Ingrediente < ApplicationRecord
  belongs_to :processo
  has_many :engenharias
end
