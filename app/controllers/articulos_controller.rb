class ArticulosController < ApplicationController

	before_action :set_articulo ,only:[:show, :edit,:update, :destroy]


	def index
		#@articulos = Articulo.all 
		@articulos = Articulo.paginate(:page => params[:page])
		Articulo.paginate(:page => params[:page], :per_page => 3)
	end

	def edit
	end


	def show 
	end


	def update
		respond_to do |format|
			if @articulo.update(articulo_params)
				format.html{redirect_to @articulo, notice: 'Editado con exito un articulo'}
			else
				format.html{render :edit}
			end
		end
	end

	def create
		@articulo = Articulo.create(articulo_params)
		respond_to do |format|
			if @articulo.save
				format.html{redirect_to @articulo, notice: 'Agregado Articulo con exito'}
			else
				format.html{render :new}
			end
		end

	end

	def destroy
		@articulo.destroy
		respond_to do |format|
			format.html{redirect_to articulos_url, noice: 'Eliminado con exito'}
		end
	end

	def new
		@articulo = Articulo.new
	end


	private

	def set_articulo
		@articulo = Articulo.find(params[:id])
	end

	def articulo_params
		params.require(:articulo).permit(:nombre, :descripcion,:stock,:precio_venta,:precio_compra,:imagen,:imagen2)
	end

end
