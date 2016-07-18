class Articulo < ActiveRecord::Base
	has_attached_file :imagen2 ,styles: {thumb:"800x600"}
	validates_attachment_content_type :imagen2, :content_type => /\Aimage\/.*\Z/
	validates :nombre, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo puede ingresar letras" } 

    validates :descripcion, length: { maximum: 500 }
    #validates :mayor_cero
    validates :stock, :mayor_cero, numericality: { only_integer: true, :message => "Solo puede ingresar numeros"}
    #falta que sea mayor a 0
 
    validates :precio_compra, numericality: { only_integer: true, message: "Solo puede ingresar numeros"}
    validates :precio_venta, numericality: { only_integer: true, message: "Solo puede ingresar numeros"}
   
    def mayor_cero
    	if stock < 0
    		errors.add(:stock, "Ingresa un stock positivo")
    	end
    end


end
