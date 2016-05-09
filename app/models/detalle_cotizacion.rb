class DetalleCotizacion < ActiveRecord::Base
	self.table_name = 'detalle_cotizaciones'
	belongs_to :cotizacion
end
