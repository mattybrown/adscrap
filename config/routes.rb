Rails.application.routes.draw do
  devise_for :users
  resources :clients
  resources :positions
  resources :issues
  resources :publications
  resources :organisations
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  resources :advertisements

  root 'welcome#index'
end
