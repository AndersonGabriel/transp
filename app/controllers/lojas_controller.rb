class LojasController < InheritedResources::Base

    def build_resource_params
        [params.fetch(:loja, {}).permit(:nome, :endereco, :tel)]
    end

end
