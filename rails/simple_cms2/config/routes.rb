Rails.application.routes.draw do

  root 'pages#landing'

  namespace :admin do
    resources :subjects
  end

end
