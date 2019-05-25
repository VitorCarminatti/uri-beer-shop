class Ingrediente < ApplicationRecord
  has_many :ingrediente_processos
  has_many :processos, through: :ingrediente_processos
  has_many :engenharias
end
