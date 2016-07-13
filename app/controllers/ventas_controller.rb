class VentasController < ApplicationController


before_action :set_venta ,only:[:show, :edit,:update, :destroy]
before_action :authenticate_user!, only:[:show, :index, :edit,:update, :destroy, :new, :create]

	def index
		@ventas = Venta.paginate(:page => params[:page], :per_page =>10)
	end


	def edit
	end


	def show 
	end

	def update
		respond_to do |format|
			if @venta.update(venta_params)
				format.html{redirect_to @venta, notice: 'Editado con exito la venta'}
			else
				format.html{render :edit}
			end
		end
	end

	def create
		@venta = Venta.create(venta_params)
		respond_to do |format|
			if @venta.save
				format.html{redirect_to ventas_url, notice: 'Agregada Venta con exito'}
			else
				format.html{render :new}
			end
		end

	end

	def destroy
		@venta.destroy
		respond_to do |format|
			format.html{redirect_to ventas_url, notice: 'Eliminada Venta con exito'}
		end
	end

	def new
		@venta = Venta.new
	end


	private

	def set_venta
		@venta = Venta.find(params[:id])
	end

	def venta_params
		params.require(:venta).permit(:cliente_id ,:fecha_venta,:tipo_documento,:descripcion)
	end


end
