class DetalleVenta < ActiveRecord::Base
	self.table_name = 'detalles_ventas'
	belongs_to :DetalleVentas
end
