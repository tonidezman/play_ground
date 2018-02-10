Rails.application.routes.draw do

  root 'pages#landing'

  namespace :admin do
    resources :subjects do
      resources :pages do
        member do
          post :add_tag
        end
      end
    end

    resources :pages do
      resources :sections
    end

    resources :tags, except: [:index, :show, :edit, :update]
  end

end
