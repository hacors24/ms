class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombres
      t.string :apellidos
      t.date :fecha_nac
      t.string :razon_social
      t.string :domicilio
      t.integer :telefono_fijo
      t.integer :celular
      t.string :email
      t.string :sitio_web
      t.text :comentario
 
      t.timestamps null: false
    end
  end
end
