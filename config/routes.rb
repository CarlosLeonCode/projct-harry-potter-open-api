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
        collection do
          get :students, to: :students
        end
      end
      resources :creatures, only: [:index, :show]
    end
    # -- End api v1 routes

  end 
end
