class Cliente < ActiveRecord::Base
	has_many :pedidos
	has_many :ventas
	has_many :cotizaciones
end
