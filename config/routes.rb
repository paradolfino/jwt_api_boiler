Rails.application.routes.draw do
  namespace :api do
     namespace :v1 do
        resources :auth, only: :create 
        resources :users, only: [:show, :create, :update]
     end
  end
end
