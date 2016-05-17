class CotizacionesController < ApplicationController

 before_action :set_cotizacion ,only:[:show, :edit,:update, :destroy]


	def index
		@cotizaciones = Cotizacion.all
	end


	def edit
	end


	def show 
	end

def new
	@cotizacion= Cotizacion.new
end




	def update
		respond_to do |format|
			if @cotizacion.update(cotizacion_params)
				format.html{redirect_to @cotizacion, notice: 'Editado con exito la cotizacion'}
			else
				format.html{render :edit}
			end
		end
	end

	def create
		@cotizacion = Cotizacion.create(cotizacion_params)
		respond_to do |format|
			if @cotizacion.save
				format.html{redirect_to @cotizacion, notice: 'Agregada Cotizacion con exito'}
			else
				format.html{render :new}
			end
		end

	end

	def destroy
		@cotizacion.destroy
		respond_to do |format|
			format.html{redirect_to cotizacions_url, notice: 'Eliminada Cotizacion con exito'}
		end
	end

	def new
		@cotizacion = Cotizacion.new
	end


	private

	def set_cotizacion
		@cotizacion = Cotizacion.find(params[:id])
	end

	def cotizacion_params
		params.require(:cotizacion).permit(:cliente_id , :fecha_acotizacion,:fecha_tcotizacion,:descuento,:descripcion)
	end


end
