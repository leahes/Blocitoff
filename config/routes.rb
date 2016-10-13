Rails.application.routes.draw do
  devise_for :users
  resources :items
  authenticated :user do
    root 'users#show', as: :authenticated_root
  end

  root "welcome#home"
end
