class CreateProcessos < ActiveRecord::Migration[5.2]
  def change
    create_table :processos do |t|
      t.string :nome
      t.string :descricao
      t.references :engenharia, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
