class Processo < ApplicationRecord
  belongs_to :engenharia
  has_many :ingredientes
end
