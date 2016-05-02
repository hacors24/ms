class Forengpedido < ActiveRecord::Migration
  def change
  	add_foreign_key :pedidos ,:clientes
  end
end
