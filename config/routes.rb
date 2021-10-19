Rails.application.routes.draw do
  # health endpoint
  root 'application#health'

  namespace :api do 
    namespace :v1 do
      resources :school_houses, except: [:destroy]
      resources :people, except: [:destroy]
      resources :genres, except: [:destroy]
    end
  end 
end
