class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.integer :cliente_id
      t.date :fecha_venta
      t.string :tipo_documento
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
