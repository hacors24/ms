class PedidosController < ApplicationController

before_action :set_pedido ,only:[:show, :edit,:update, :destroy]


	def index
		@pedidos = Pedido.all
	end


	def edit
	end


	def show 
	end





	def update
		respond_to do |format|
			if @pedido.update(pedido_params)
				format.html{redirect_to @pedido, notice: 'Editado con exito el pedido'}
			else
				format.html{render :edit}
			end
		end
	end

	def create
		@pedido = Pedido.create(pedido_params)
		respond_to do |format|
			if @pedido.save
				format.html{redirect_to @pedido, notice: 'Agregado Pedido con exito'}
			else
				format.html{render :new}
			end
		end

	end

	def destroy
		@pedido.destroy
		respond_to do |format|
			format.html{redirect_to pedidos_url, notice: 'Eliminado Pedido con exito'}
		end
	end

	def new
		@pedido = Pedido.new
	end


	private

	def set_pedido
		@pedido = Pedido.find(params[:id])
	end

	def pedido_params
		params.require(:pedido).permit(:cliente_id , :fecha_pedido ,:fecha_entrega,:estado,:descripcion)
	end



end
