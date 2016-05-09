class DetallePedido < ActiveRecord::Base
	self.table_name = 'detalle_pedidos'
	belongs_to :pedido
end
