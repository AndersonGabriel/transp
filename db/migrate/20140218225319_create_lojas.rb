class CreateLojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
      t.string :nome
      t.string :endereco
      t.string :tel

      t.timestamps
    end
  end
end
