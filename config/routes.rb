Rails.application.routes.draw do
  post 'login', to: 'access_token#create'
  delete 'logout', to: 'access_tokens#destroy'
  resources :articles
end
