class Articulo < ActiveRecord::Base
	has_attached_file :imagen2 ,styles: {thumb:"800x600"}
	validates_attachment_content_type :imagen2, :content_type => /\Aimage\/.*\Z/
	validates :nombre, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo puede ingresar letras" } 

    validates :descripcion, length: { maximum: 500 }
    validate :mayor_cero, on: :create
    validates :stock, numericality: { only_integer: true, :message => "Solo puede ingresar numeros"}
  
    validates :precio_compra, numericality: { only_integer: true, message: "Solo puede ingresar numeros"}
    validates :precio_venta, numericality: { only_integer: true, message: "Solo puede ingresar numeros"}
    validate :validar_precio, on: :create

    def mayor_cero
    	if stock < 0
    		errors.add(:stock, "Ingresa un valor positivo")
    	end
        if precio_compra < 0
            errors.add(:stock, "Ingrese un precio positivo")
        end
        if precio_venta < 0
            errors.add(:stock, "Ingrese un precio positivo")
        end

    end

    def validar_precio
        if precio_venta < precio_compra
            errors.add(:precio_venta, "debe ser mayor que el de compra")
        end
    end

end
