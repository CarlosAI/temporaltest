class CreateReporteAbusos < ActiveRecord::Migration[7.0]
  def change
    create_table :reporte_abusos do |t|
      t.string :tipo_abuso
      t.text :descripcion

      t.timestamps
    end
  end
end
