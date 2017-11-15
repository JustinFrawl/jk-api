Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories, only: [:index, :update, :new, :create, :show] do
        resources :posts, only: [:index, :update, :new, :create, :show] do
          resources :comments, only: [:index, :update, :new, :create, :show]
        end
      end

      
      # get '/categories/id/posts/id', to: 'posts#show'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
