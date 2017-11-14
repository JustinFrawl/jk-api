Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories, only: [:index, :update, :new, :create]
      resources :posts, only: [:index, :update, :new, :create]
      resources :comments, only: [:index, :update, :new, :create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
