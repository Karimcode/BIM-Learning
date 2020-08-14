Rails.application.routes.draw do

  get 'messages/create'
  get 'messages/destroy'
  get 'participations/index'
  get 'participations/create'
  get 'participations/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :lessons, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
