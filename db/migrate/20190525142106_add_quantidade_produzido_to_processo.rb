class AddQuantidadeProduzidoToProcesso < ActiveRecord::Migration[5.2]
  def change
    add_column :processos, :quantidade_produzida, :decimal
  end
end
