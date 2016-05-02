class CreateCotizacions < ActiveRecord::Migration
  def change
    create_table :cotizacions do |t|
      t.integer :cliente_id
      t.date :fecha_acotizacion
      t.date :fecha_tcotizacion
      t.integer :descuento
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
