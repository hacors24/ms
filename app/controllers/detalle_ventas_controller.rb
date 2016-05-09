class DetalleVentasController < ApplicationController
before_action :set_detalle_ventas ,only:[:show, :edit,:update, :destroy]


	def index
		@detalle_ventas= Detalle_Ventas.all
	end


	def edit
	end


	def show 
	end





	def update
		respond_to do |format|
			if @detalle_venta.update(detalle_venta_params)
				format.html{redirect_to @detalle_venta, notice: 'Editado con exito el detalle'}
			else
				format.html{render :edit}
			end
		end
	end

	def create
		@detalle_venta = Detalle_Ventas.create(detalle_venta_params)
		respond_to do |format|
			if @detalle_ventas.save
				format.html{redirect_to @detalle_venta, notice: 'Agregado Detalle con exito'}
			else
				format.html{render :new}
			end
		end

	end

	def destroy
		@detalle_venta.destroy
		respond_to do |format|
			format.html{redirect_to detalle_venta_url, notice: 'Eliminado Detalle con exito'}
		end
	end

	def new
		@detalle_venta = Detalle_Venta.new
	end


	private

	def set_detalle_venta
		@detalle_venta= Detalle_Venta.find(params[:id])
	end

	def detalle_venta_params
		params.require(:detalle_venta).permit(:venta_id , :articulo_id ,:cantidad,:precio_unitario)
	end


end
