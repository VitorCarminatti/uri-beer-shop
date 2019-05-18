class AddIngredienteToEngenharias < ActiveRecord::Migration[5.2]
  def change
    add_reference :engenharias, :ingrediente, foreign_key: true
  end
end
