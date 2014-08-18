class Api::RequestsController < ApplicationController
	respond_to :json


    #metodo para obtener todos los temas por capitulo
    def obtenerTemasPorSubCapitulo
        @subchapter_id = params[:subchapter_id]
    	@contents = Content.where("subchapter_id = ?",@subchapter_id)
    	respond_with @contents.to_json
    end


end