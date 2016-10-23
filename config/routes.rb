Rails.application.routes.draw do
  devise_for :users

  resources :user, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  authenticated :user do
      root to: 'users#show', as: :authenticated_root
  end

  root "welcome#home"
end
