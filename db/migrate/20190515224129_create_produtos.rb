class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.string :nome
      t.decimal :quantidade
      t.decimal :preco
      t.boolean :produzido, default: true
      t.string :imagem
      t.references :engenharia, foreign_key: true

      t.timestamps
    end
  end
end
