Rails.application.routes.draw do
  get 'home/index'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'home#index'
  resources :boards
  resources :comments, only: %i[create destroy]
end
