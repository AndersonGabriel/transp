class PedidosController < InheritedResources::Base

   def build_resource_params
        [params.fetch(:pedido, {}).permit(:peso, :dimensao, :numero, :cliente_id, :loja_id)]
    end


end
