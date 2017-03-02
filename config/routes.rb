Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos do
    resource :completion, only: [:create]
  end
  resources :session, only: [:new, :create]
end
