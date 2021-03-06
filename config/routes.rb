Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  get 'contact', to: 'pages#contact'
  resources :composts
  resources :messages, only: [:create]
  resources :users, only: [] do
    member do
      get 'composts', to: 'users#composts'
    end
  end

  # admin routes
  namespace :admin do
    root to: 'pages#dashboard'
    # Why did I do this?
    # resources :users, only: [:edit, :update]
    resources :composts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
