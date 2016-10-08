Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]
  get 'users/show'
  root to: 'welcome#home'
end
