Rails.application.routes.draw do
  root "users#edit"
  get 'statements/show'

  resources :users, only: [:edit, :update]
  resources :exams, only: [:edit, :create, :destroy, :update]
  resources :specialties, only: [:edit, :update, :create]
end
