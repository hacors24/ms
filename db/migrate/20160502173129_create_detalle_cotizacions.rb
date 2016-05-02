class CreateDetalleCotizacions < ActiveRecord::Migration
  def change
    create_table :detalle_cotizacions do |t|
      t.integer :cotizacion_id
      t.integer :articulo_id
      t.integer :cantidad
      t.integer :precio_unitario

      t.timestamps null: false
    end
  end
end
