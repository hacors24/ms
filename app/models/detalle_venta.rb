class DetalleVenta < ActiveRecord::Base
	self.table_name = 'detalle_ventas'
	belongs_to :Venta
end
