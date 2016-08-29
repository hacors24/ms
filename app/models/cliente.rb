class Cliente < ActiveRecord::Base
	has_many :pedidos, :dependent => :delete_all
	has_many :ventas, :dependent => :delete_all
	has_many :cotizaciones, :dependent => :delete_all
    
    validates :nombres, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo puede ingresar letras" } 

    validates :apellidos, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo puede ingresar letras" }
     

end
