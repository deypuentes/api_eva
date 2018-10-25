Rails.application.routes.draw do
    get 'type_documents', to: 'users#get_types'
    post 'type_documents', to: 'users#create_types'
    
    resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
