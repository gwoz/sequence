Rails.application.routes.draw do

  root 'main#index'

  resources :companies, defaults: { format: :json } do
    resources :projects, defaults: { format: :json } do
      resources :patterns, defaults: { format: :json }
      end
    resources :patterns, defaults: { format: :json }
    resources :clients, defaults: { format: :json }
  end

  resources :main, only: :index


end
