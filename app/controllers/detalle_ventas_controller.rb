class DetalleVentasController < ApplicationController
before_action :set_detalle_venta ,only:[:show, :edit,:update, :destroy]
before_action :authenticate_user!, only:[:show, :index, :edit,:update, :destroy, :new, :create]

	def index
		@detalle_ventas= DetalleVenta.paginate(:page => params[:page], :per_page =>10)
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
		@detalle_venta = DetalleVenta.create(detalle_venta_params)
		respond_to do |format|
			if @detalle_venta.save
				format.html{redirect_to detalle_ventas_url, notice: 'Agregado Detalle con exito'}
			else
				format.html{render :new}
			end
		end

	end

	def destroy
		@detalle_venta.destroy
		respond_to do |format|
			format.html{redirect_to detalle_ventas_url, notice: 'Eliminado Detalle con exito'}
		end
	end

	def new
		@detalle_venta = DetalleVenta.new
	end


	private

	def set_detalle_venta
		@detalle_venta= DetalleVenta.find(params[:id])
	end

	def detalle_venta_params
		params.require(:detalle_venta).permit(:venta_id , :articulo_id ,:cantidad,:precio_unitario)
	end


end
