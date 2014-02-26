class RemessasController < InheritedResources::Base
  
	def build_resource_params
        [params.fetch(:remessa, {}).permit(:codigorastreio, :status, :datapostagem, :previsaoentrega, :pedido_id)]
    end
end
