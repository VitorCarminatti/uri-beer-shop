class Ingrediente < ApplicationRecord
  has_many :ingrediente_processos
  has_many :processos, through: :ingrediente_processos
  has_many :engenharias

  validates :nome, presence: true
  validates :descricao, presence: true
  validates :quantidade, presence: true
  validates :quantidade_consumo, presence: true
end
