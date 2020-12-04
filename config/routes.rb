Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
    root to: 'application#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  get '/events/comedy', to: 'events#comedy'
  get '/events/sports', to: 'events#sports'
  get '/events/concert', to: 'events#concert'
  
  resources :arenas do
    resources :events, only: [:index, :show, :new, :edit]
  end
  resources :events

  devise_scope :user do
    get '/users/sign_in', to: 'devise/sessions#new'
    post '/users/sign_in', to: 'devise/sessions#create'
    get '/users/sign_up', to: 'devise/sessions#new'
    post '/users/sign_up', to: 'devise/sessions#create'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  get '/users/:id', to: 'users#show'
end
