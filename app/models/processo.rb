class Processo < ApplicationRecord
  has_many :ingrediente_processos
  has_many :ingredientes, through: :ingrediente_processos
  has_many :processo_engenharias
  has_many :engenharias, through: :processo_engenharias

  enum status: { em_andamento: 0, finalizado: 1 }

  after_save :atualiza_quantidades

  def atualiza_quantidades
    self
      .ingredientes
      .each{ |i| i.update(quantidade: i.quantidade - i.quantidade_consumo) } if self.status == 'finalizado'

    self
      .engenharias
      .first
      .produto.update(quantidade: self.engenharias.first.produto += self.quantidade_produzida)
  end
end
