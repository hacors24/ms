class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.integer :cliente_id
      t.date :fecha_pedido
      t.date :fecha_entrega
      t.boolean :estado
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
