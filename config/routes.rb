Rails.application.routes.draw do
  root to: 'static#index'
  resources :storylines, only: [:index, :show]
  resources :campaigns, only: [:show]
  resources :users
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/about' => 'static#about'
  get '/how-to-play' => 'static#how'

  resources :users do
    resources :campaigns do
      resources :storylines
    end
  end
end
