Rails.application.routes.draw do
  root 'pages#landing'

  get  '/login',  to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  get  '/logout', to: 'sessions#destroy'

  namespace :admin do
    resources :subjects do
      resources :pages do
        member do
          post :add_tag
          delete :remove_tag
        end
      end
    end

    resources :pages do
      resources :sections
    end

    resources :tags, except: [:index, :show, :edit, :update]
  end

end
