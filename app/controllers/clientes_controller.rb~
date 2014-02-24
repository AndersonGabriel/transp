class LojasController < InheritedResources::Base

    def build_resource_params
        [params.fetch(:cliente, {}).permit(:nome, :endereco, :tel)]
    end

end
