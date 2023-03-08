json.extract! reporte_abuso, :id, :tipo_abuso, :descripcion, :created_at, :updated_at
json.url reporte_abuso_url(reporte_abuso, format: :json)
