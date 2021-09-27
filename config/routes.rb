Rails.application.routes.draw do
  get 'api_health', to: 'application#health'

  namespace :api do 
    namespace :v1 do
      # health

      resources :houses
      
    end
  end 
end
