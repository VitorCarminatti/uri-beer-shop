class CreateEngenharias < ActiveRecord::Migration[5.2]
  def change
    create_table :engenharias do |t|
      t.string :descricao
      t.integer :status, default: 0
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
