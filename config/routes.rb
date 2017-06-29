Rails.application.routes.draw do

  root :to => 'public#index'
 
  get 'show/:id', :to => 'public#show', :as => 'public_show'


  resources :employees do
    member do
      get :delete
    end
  end

  resources :departments do
    member do
      get :delete
      end
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
