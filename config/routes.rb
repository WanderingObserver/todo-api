Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users

      get 'user', to: 'users#show', as: 'user_show'
      post 'signup', to: 'users#create', as: 'user_signup'
      post 'login', to: 'users#login', as: 'user_login'

      resources :todos do
        resources :sub_todos
      end
    end
  end
end
