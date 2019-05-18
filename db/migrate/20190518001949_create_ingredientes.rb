class CreateIngredientes < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredientes do |t|
      t.string :nome
      t.string :descricao
      t.boolean :produzido
      t.decimal :quantidade
      t.decimal :quantidade_consumo
      t.references :processo, foreign_key: true
      t.references :engenharia, foreign_key: true

      t.timestamps
    end
  end
end
