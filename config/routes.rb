Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :items
  resources :appointments
  post 'authenticate', to: 'authentication#authenticate'
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
end
 