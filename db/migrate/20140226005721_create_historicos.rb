class CreateHistoricos < ActiveRecord::Migration
  def change
    create_table :historicos do |t|
      t.string :evento
      t.string :observacao
      t.string :data
      t.references :remessa, index: true

      t.timestamps
    end
  end
end
