class Processo < ApplicationRecord
  belongs_to :engenharia
  has_many :ingredientes

  enum status: { em_andamento: 0, finalizado: 1 }
end
