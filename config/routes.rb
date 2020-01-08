Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  get 'posts/show'

  root 'home#index'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'registrations'
  }
  resources :home, only: [:index]
  resources :posts, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
