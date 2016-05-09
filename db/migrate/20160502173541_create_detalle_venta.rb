class CreateDetalleVenta < ActiveRecord::Migration
  def change
    create_table :detalle_ventas do |t|
      t.integer :venta_id
      t.integer :articulo_id
      t.integer :cantidad
      t.integer :precio_unitario

      t.timestamps null: false
    end
  end
end
