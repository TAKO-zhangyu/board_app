Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'home#index'
  resoueces :users, only: %i[new create]
  resources :boards
  resources :comments, only: %i[create destroy]
end
