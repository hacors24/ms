class Cliente < ActiveRecord::Base
	has_many :pedidos, :dependent => :delete_all
	has_many :ventas, :dependent => :delete_all
	has_many :cotizaciones, :dependent => :delete_all
    
    validates :nombres, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo puede ingresar letras" } 

    validates :apellidos, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo puede ingresar letras" }
    
    validates :telefono_fijo, numericality: { only_integer: true, message: "Solo puede ingresar numeros"}

    validates :celular, numericality: { only_integer: true, message: "Solo puede ingresar numeros"}
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: "Erroneo, Ingrese un mail valido"}
end
