json.array!(@articulos) do |articulo|
  json.extract! articulo, :id, :nombre, :stock, :precio_venta, :precio_compra, :descripcion, :imagen2
  json.url articulo_url(articulo, format: :json)
end