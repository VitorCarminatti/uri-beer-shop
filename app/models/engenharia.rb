class Engenharia < ApplicationRecord
  belongs_to :usuario
  belongs_to :produto
  belongs_to :ingrediente
  has_many :processos
end
