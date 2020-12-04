Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items
  resources :users
  resources :appointments
  post '/login', to: 'users#login'
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
end
 