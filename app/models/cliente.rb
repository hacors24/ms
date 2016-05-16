class Cliente < ActiveRecord::Base
	has_many :pedidos, :dependent => :delete_all
	has_many :ventas
	has_many :cotizaciones
end
