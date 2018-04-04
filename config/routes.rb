Rails.application.routes.draw do
  resources :beerfacts
  resources :beers
  root to: 'welcome#index'

  get '/brand', to: 'brand#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
