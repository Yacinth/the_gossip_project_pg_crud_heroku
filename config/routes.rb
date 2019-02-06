Rails.application.routes.draw do
  root 'gossips#index'
  get 'static_pages/team'
  get 'static_pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :gossips, only: [:index,:show, :new, :create]

end
