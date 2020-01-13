Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', 'sign_up': 'register', sign_out: 'logout'}

  # Activities route
  get 'activities/index'

  resources :activities

  # Home route
  get 'home/index'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
