Rails.application.routes.draw do
  root 'gossips#index'
  get 'welcome/:first_name', to: 'index#show'
  get 'static_pages/team'
  get 'static_pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :new, :create]
  resources :gossips, only: [:index,:show, :new, :create]
  resources :cities, only: [:show]
  resources :sessions, only: [:destroy, :create, :new]

end
