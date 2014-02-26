class CreateRemessas < ActiveRecord::Migration
  def change
    create_table :remessas do |t|
      t.string :codigorastreio
      t.string :status
      t.string :datapostagem
      t.string :previsaoentrega
      t.references :pedido, index: true

      t.timestamps
    end
  end
end
