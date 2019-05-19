class Engenharia < ApplicationRecord
  belongs_to :usuario
  belongs_to :produto, optional: true
  belongs_to :ingrediente, optional: true
  has_many :processos

  enum status: { em_andamento: 0, finalizado: 1 }
end
