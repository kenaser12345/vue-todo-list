Rails.application.routes.draw do
  root 'home#index'
  #session
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #user
  resources :users, only: [:new, :create]

  #task
  resources :tasks

  #api
  namespace :api do
    namespace :v1 do
      post 'get_task_info', to: 'tasks#get_task_info'
    end 
  end
end
