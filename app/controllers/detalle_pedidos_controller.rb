class DetallePedidosController < ApplicationController

before_action :set_detalle_pedidos ,only:[:show, :edit,:update, :destroy]


	def index
		@detalle_pedidos= Detalle_Pedidos.all
	end


	def edit
	end


	def show 
	end





	def update
		respond_to do |format|
			if @detalle_pedido.update(detalle_pedido_params)
				format.html{redirect_to @detalle_pedido, notice: 'Editado con exito el detalle'}
			else
				format.html{render :edit}
			end
		end
	end

	def create
		@detalle_pedido = Detalle_Pedido.create(detalle_pedido_params)
		respond_to do |format|
			if @detalle_pedido.save
				format.html{redirect_to @detalle_pedido, notice: 'Agregado Detalle con exito'}
			else
				format.html{render :new}
			end
		end

	end

	def destroy
		@detalle_pedido.destroy
		respond_to do |format|
			format.html{redirect_to detalle_pedido_url, notice: 'Eliminado Detalle con exito'}
		end
	end

	def new
		@detalle_pedido = Detalle_Pedido.new
	end


	private

	def set_detalle_pedido
		@detalle_pedido= Detalle_Pedido.find(params[:id])
	end

	def detalle_pedido_params
		params.require(:detalle_pedido).permit(:pedido_id , :articulo_id ,:cantidad,:precio_unitario)
	end



end
