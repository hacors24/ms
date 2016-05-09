class Venta < ActiveRecord::Base
	self.table_name = 'ventas'
	belongs_to :cliente
	has_many :detalle_venta

end
