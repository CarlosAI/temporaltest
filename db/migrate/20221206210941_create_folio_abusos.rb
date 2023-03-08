class CreateFolioAbusos < ActiveRecord::Migration[7.0]
  def change
    create_table :folio_abusos do |t|
      t.string :folio
      t.string :cliente
      t.datetime :fecha
      t.string :unidad
      t.integer :tipo_contrato
      t.string :operador
      t.integer :tipo_abuso
      t.text :abuso_presentado
      t.float :costo_total
      t.integer :reporta

      t.timestamps
    end
  end
end
