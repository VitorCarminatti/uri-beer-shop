class AddProdutoToEngenharias < ActiveRecord::Migration[5.2]
  def change
    add_reference :engenharias, :produto, foreign_key: true
  end
end
