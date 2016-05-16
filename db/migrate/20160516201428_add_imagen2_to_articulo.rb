class AddImagen2ToArticulo < ActiveRecord::Migration
  def change
  	add_attachment :articulos,:imagen2
  end
end
