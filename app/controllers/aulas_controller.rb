class AulasController < ApplicationController
	def show
		@aulas = Aula.page params[:page]
	end

	def create
		puts "chamou aqui"
		@aula = Aula.new(aula_params)
		respond_to do |format|
			if @aula.save
				format.html { redirect_to aulas_path, notice: "Aula adicionada com sucesso !"}
			end
		end
	end

	def new
		@aula = Aula.new
	end

	private
	def aula_params
      params.require(:aula).permit(:nome, :description, :image_url)
    end
end

