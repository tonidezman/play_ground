Rails.application.routes.draw do

  root 'pages#landing'

  namespace :admin do
    resources :subjects do
      resources :pages
    end
  end

end
