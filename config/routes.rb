Rails.application.routes.draw do
  resources :articles
  root 'articles#index'
  devise_for :users, path: 'auth', path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      password: 'password',
      confirmation: 'verification',
      unlock: 'unblock',
      registration: 'register',
      sign_up: 'register'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
