class CreateProcessoEngenharias < ActiveRecord::Migration[5.2]
  def change
    create_table :processo_engenharias do |t|
      t.references :engenharia, foreign_key: true, index: true
      t.references :processo, foreign_key: true, index: true
    end
  end
end
