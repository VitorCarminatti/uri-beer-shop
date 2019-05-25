class ProcessoEngenharia < ApplicationRecord
  belongs_to :engenharia
  belongs_to :processo
end