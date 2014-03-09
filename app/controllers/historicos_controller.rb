class HistoricosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:historico, {}).permit(:evento, :observacao, :data, :remessa_id)]
end

end
