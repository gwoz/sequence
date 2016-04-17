Rails.application.routes.draw do

  root 'main#index'

  resources :companies do
    resources :projects do
      resources :patterns
      end
    resources :patterns
    resources :clients
  end

  resources :main, only: :index


end
