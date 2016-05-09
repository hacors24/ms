class Cotizacion < ActiveRecord::Base
	self.table_name = 'cotizaciones'
	belongs_to :cliente
	has_many :detalle_cotizacion
end
