Rails.application.routes.draw do

  resources :companies, defaults: { format: :json } do
    resources :projects, defaults: { format: :json }
    resources :patterns, defaults: { format: :json }
    resources :clients, defaults: { format: :json }
  end


end
