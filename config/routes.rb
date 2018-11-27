Rails.application.routes.draw do
  devise_for :users



  resources :wikis
  resources :charges, only: [:new, :create]

  get "welcome/index"

  root 'welcome#index'
end