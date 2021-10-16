Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'people/index'
      get 'people/show'
      get 'people/new'
      get 'people/create'
      get 'people/edit'
      get 'people/update'
      get 'people/destroy'
    end
  end
  # health endpoint
  root 'application#health'

  namespace :api do 
    namespace :v1 do

      resources :school_houses
      
    end
  end 
end
