class ClientesController < ApplicationController

before_action :set_cliente ,only:[:show, :edit,:update, :destroy]
before_action :authenticate_user!, only:[:show, :index, :edit,:update, :destroy, :new, :create]

	def index
		@clientes = Cliente.all
	end


	def edit
	end


	def show 
	end





	def update
		respond_to do |format|
			if @cliente.update(cliente_params)
				format.html{redirect_to @cliente, notice: 'Editado con exito el cliente '}
			else
				format.html{render :edit}
			end
		end
	end

	def create
		@cliente = Cliente.create(cliente_params)
		respond_to do |format|
			if @cliente.save
				format.html{redirect_to @cliente, notice: 'Agregado Cliente con exito'}
			else
				format.html{render :new}
			end
		end

	end

	def destroy
		@cliente.destroy
		respond_to do |format|
			format.html{redirect_to clientes_url, notice: 'Eliminado Cliente con exito'}
		end
	end

	def new
		@cliente = Cliente.new
	end


	private

	def set_cliente
		@cliente = Cliente.find(params[:id])
	end

	def cliente_params
		params.require(:cliente).permit(:nombres, :apellidos,:fecha_nac,:razon_social,:domicilio,:telefono_fijo,:celular,:email,:sitio_web,:comentario)
	end

end
