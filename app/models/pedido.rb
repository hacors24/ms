class Pedido < ActiveRecord::Base
	belongs_to :cliente
	has_many :detalle_pedidos
	

end
