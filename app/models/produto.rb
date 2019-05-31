class Produto < ApplicationRecord
  has_one :engenharia
  has_one_attached :imagem

  validates :imagem, presence: true
  validates :nome, presence: true
  validates :descricao, presence: true
  validates :quantidade, presence: true
  validates :preco, presence: true

  after_save :set_engenharia

  def set_engenharia
    Engenharia.find(self.engenharia_id).update(produto_id: self.id)
  end
end
