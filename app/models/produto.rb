class Produto < ApplicationRecord
  has_one :engenharia
  has_one_attached :imagem

  validates :imagem, presence: true
  validates :nome, presence: true
  validates :descricao, presence: true
  validates :quantidade, presence: true
  validates :preco, presence: true
end
