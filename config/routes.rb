Rails.application.routes.draw do
  post 'login', to: 'access_token#create'
  resources :articles, only: [:index, :show]
end
