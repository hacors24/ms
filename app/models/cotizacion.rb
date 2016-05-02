class Cotizacion < ActiveRecord::Base
	belongs_to :cliente
	has_many :detalle_cotizacion
end
