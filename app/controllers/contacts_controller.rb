class ContactsController < ApplicationController
    def index   
        user = User.find(params[:id])
        contacts = user.contacts
        render json: contacts, status: :ok
    end

    def create
        contact = Contact.create(contact_params)
        render json: contact, status: :ok        
    end
    
    def update
        contact = Contact.find(params[:id])
        contact.update(contact_params)
        render json: contact, status: :ok
    end
    
    def destroy
        contact = Contact.find(params[:id])
        contact.destroy
        render json: contact, status: :ok
    end
    
    private
    def contact_params
        params.permit(:name, :telephone_number, :user_id)
    end
end
