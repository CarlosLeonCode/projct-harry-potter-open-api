Rails.application.routes.draw do

  root to: redirect('https://harrypotter-open-api.netlify.app/')

  # -- Start api v1 routes
  namespace :api do 
    namespace :v1 do
      get 'health', to: 'health#status'

      resources :school_houses, only: [:index, :show]
      resources :genres, only: [:index, :show]
      resources :schools, only: [:index, :show] do        
        get 'houses', to: 'schools#houses', on: :member
      end
      resources :students, only: [:index, :show]
      resources :people, only: [:index, :show] do 
        scope module: :people do
          collection do  
            resources :wizards, only: %i[ index show ]
            resources :students, only: %i[ index show ]
          end
        end
      end

    end
  end 
  # -- End api v1 routes
end
