Rails.application.routes.draw do
  root 'application#health'

  namespace :api do 
    namespace :v1 do
      # health

      resources :houses
      
    end
  end 
end
