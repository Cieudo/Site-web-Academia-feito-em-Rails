class ClientesController < InheritedResources::Base
  
  private

    def cliente_params
      params.require(:cliente).permit(:nome, :idade, :planos, :cpf)
    end
    
end