Rails.application.routes.draw do
  root to: "reminds#index"

  resources :reminds, only: [:new, :create, :index] do
    resource :completion, only: [:create, :destroy]
  end

  resource :session, only: [:new, :create]
end
