class Processo < ApplicationRecord
  has_many :ingrediente_processos
  has_many :ingredientes, through: :ingrediente_processos
  has_many :processo_engenharias
  has_many :engenharias, through: :processo_engenharias

  enum status: { em_andamento: 0, finalizado: 1 }

  after_save :atualiza_quantidades

  validate :ingrediente_disponivel

  def atualiza_quantidades
    if self.status == "finalizado"
      self
        .ingredientes
        .each { |i| i.update(quantidade: i.quantidade - i.quantidade_consumo) }

      self
        .engenharias
        .first
        .produto.update(quantidade: self.engenharias.first.produto.quantidade += self.quantidade_produzida)
    end
  end

  def ingrediente_disponivel
    self.ingredientes.each do |ingrediente|
      self.errors.add(:base, "Quantidade consumida é maior que a quantidade disponível") if ingrediente.quantidade_consumo > ingrediente.quantidade
    end
  end
end
