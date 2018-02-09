Rails.application.routes.draw do

  root 'pages#landing'

  namespace :admin do
    resources :subjects do
      resources :pages, except: [:show]
    end
  end

end
