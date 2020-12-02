Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
    root to: 'application#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :arenas, only: [:index, :show, :new, :edit]
  resources :events, only: [:index, :show, :new, :edit]

  get '/users/:id', to: 'users#show'
end
