Rails.application.routes.draw do
  # get 'tonko/index'

  # get 'tonko/show/:id', to: 'tonko#show'
  resources 'tonko'

  root to: 'demo#index'
  get 'demo/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
