Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'

  get 'auth/developer', as: 'developer_auth'
  get 'auth/github', as: 'github_auth'
  match 'auth/:provider/callback', to: 'session#create', :via => [:get, :post]
  get 'session/destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
