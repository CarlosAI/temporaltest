class CreateContratos < ActiveRecord::Migration[7.0]
  def change
    create_table :contratos do |t|
      t.string :tipo_contrato
      t.text :descripcion

      t.timestamps
    end
  end
end
