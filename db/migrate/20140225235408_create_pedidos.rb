class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :peso
      t.string :dimensao
      t.string :numero
      t.references :cliente, index: true
      t.references :loja, index: true

      t.timestamps
    end
  end
end
