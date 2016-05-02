class Cliente < ActiveRecord::Base
	has_many :pedidos
	has_many :ventums
	has_many :cotizaciones
end
