Rails.application.routes.draw do
  devise_for :users
  get 'task/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :task, only: [:index]
  root 'task#index'

end
