Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :sessions, only: [:create]
  # resources :registrations, only: [:create]
  resources :items
  resources :users
  resources :appointments
  post '/login', to: 'users#login'
  # post 'authenticate', to: 'authentication#authenticate'
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
end
 