class Api::ResponsesController < ApplicationController
	respond_to :json

	def index
		json_response = {
			models: "hola"
		}

	respond_with json_response
    end

    def getAllContents
    	@content = Content.all
		json_response = {
			models: "random"
		}

	respond_with @content
    end

    def get_all_contents_by_subchapter_id
    	@content = Content.find_all_by_subchapter_id(4)

    	json_response = {
			models: @content
		}

		respond_with json_response

    end

end