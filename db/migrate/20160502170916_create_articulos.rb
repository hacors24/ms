class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :stock
      t.integer :precio_compra
      t.integer :precio_venta
      t.string :imagen 

      t.timestamps null: false
    end
  end
end
