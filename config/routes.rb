Rails.application.routes.draw do
  # health endpoint
  root 'application#health'

  namespace :api do 
    namespace :v1 do
      resources :school_houses, only: [:index, :show]
      resources :people, only: [:index, :show] do 
        get 'wizards', to: 'people#wizards', on: :collection
        get 'students', to: 'people#students', on: :collection
      end
      resources :genres, only: [:index, :show]
      resources :schools, only: [:index, :show] do        
        get 'houses', to: 'schools#houses', on: :member
      end
      resources :students, only: [:index, :show]
    end
  end 
end
