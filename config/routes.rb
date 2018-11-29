Rails.application.routes.draw do
  get 'attach/:id', to: 'task_user#attach', as: 'attach'
  get 'dettach/:id', to: 'task_user#dettach', as: 'dettach'
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :task, only: [:index, :show]
  root 'task#index'

end
