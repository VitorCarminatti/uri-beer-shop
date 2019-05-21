class Produto < ApplicationRecord
  has_many :engenharias
  has_one_attached :imagem

  validates :imagem, presence: true
  validates :nome, presence: true
  validates :descricao, presence: true
  validates :quantidade, presence: true
  validates :preco, presence: true
end
