class CreateIngredienteProcessos < ActiveRecord::Migration[5.2]
  def change
    create_table :ingrediente_processos do |t|
      t.references :ingrediente, foreign_key: true, index: true
      t.references :processo, foreign_key: true, index: true
    end
  end
end