class DetalleCotizacionesController < ApplicationController


before_action :set_detalle_cotizacion ,only:[:show, :edit,:update, :destroy]


	def index
		@detalle_cotizaciones= DetalleCotizacion.all
	end


	def edit
	end


	def show 
	end





	def update
		respond_to do |format|
			if @detalle_cotizacion.update(detalle_cotizacion_params)
				format.html{redirect_to @detalle_cotizacion, notice: 'Editado con exito el detalle'}
			else
				format.html{render :edit}
			end
		end
	end

	def create
		@detalle_cotizacion = DetalleCotizacion.create(detalle_cotizacion_params)
		respond_to do |format|
			if @detalle_cotizacion.save
				format.html{redirect_to @detalle_cotizacion, notice: 'Agregado Detalle con exito'}
			else
				format.html{render :new}
			end
		end

	end

	def destroy
		@detalle_cotizacion.destroy
		respond_to do |format|
			format.html{redirect_to detalle_cotizacion_url, notice: 'Eliminado Detalle con exito'}
		end
	end

	def new
		@detalle_cotizacion = DetalleCotizacion.new
	end


	private

	def set_detalle_cotizacion
		@detalle_cotizacion= DetalleCotizacion.find(params[:id])
	end

	def detalle_cotizacion_params
		params.require(:detalle_cotizacion).permit(:cotizacion_id , :articulo_id ,:cantidad,:precio_unitario)
	end



end
