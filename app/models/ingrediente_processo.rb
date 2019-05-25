class IngredienteProcesso < ApplicationRecord
  belongs_to :ingrediente
  belongs_to :processo
end