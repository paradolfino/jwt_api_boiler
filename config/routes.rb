Rails.application.routes.draw do
  namespace :api do
     namespace :v1 do
        resources :auth, only: :create 
     end
  end
end
