class UsersController < ApplicationController

    def get_types
        types = Document.all
        render json: types, status: :ok
    end
    
    def create_types
        document = Document.create(params.permit(:name))
        render json: document, status: :ok
    end
    
    def create
        render json: User.create(user_params)
        
    end

    private

    def user_params
        params.permit(:name, :num_document, :ring, :email, :document, :document_id)
    end    
end
