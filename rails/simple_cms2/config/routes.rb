Rails.application.routes.draw do

  root 'pages#landing'

  namespace :admin do
    resources :subjects do
      resources :pages do
      end
    end

    resources :pages do
      resources :sections
    end
  end

end
