Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  resources :items
=======

>>>>>>> master
  authenticated :user do
    root 'users#show', as: :authenticated_root
  end

  root "welcome#home"
end
