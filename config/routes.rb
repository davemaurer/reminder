Rails.application.routes.draw do
  root to: "reminds#index"

  resources :reminds, only: [:new, :create, :index]
end
