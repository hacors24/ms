class Cliente < ActiveRecord::Base
	has_many :pedidos, :dependent => :delete_all
	has_many :ventas, :dependent => :delete_all
	has_many :cotizaciones, :dependent => :delete_all
    
    


end
