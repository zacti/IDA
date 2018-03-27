Rails.application.routes.draw do
  resources :users
  resources :furnitures
  post "/furniture/search" => "furnitures#index"
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get "/auth/google_oauth2/callback" => "users#google_oauth2"


end
