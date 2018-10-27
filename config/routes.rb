Rails.application.routes.draw do
    get 'type_documents', to: 'users#get_types'
    post 'type_documents', to: 'users#create_types'


    get 'users/:id/contacts', to: 'contacts#index'
    resources :users, :contacts, except: :index 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
