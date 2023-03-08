json.extract! folio_abuso, :id, :folio, :cliente, :fecha, :unidad, :tipo_contrato, :operador, :tipo_abuso, :abuso_presentado, :costo_total, :reporta, :created_at, :updated_at
json.url folio_abuso_url(folio_abuso, format: :json)
