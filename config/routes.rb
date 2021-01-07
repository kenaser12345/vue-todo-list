Rails.application.routes.draw do
  root 'tasks#index'
  #session
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #user
  resources :users, only: [:new, :create]

  #task
  resources :tasks
end
