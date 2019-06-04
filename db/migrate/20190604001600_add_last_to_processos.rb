class AddLastToProcessos < ActiveRecord::Migration[5.2]
  def change
    add_column :processos, :last, :boolean
  end
end
