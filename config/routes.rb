Rails.application.routes.draw do
  root 'dashboard#index'

  get '/users', to: 'users#index'
  get '/auth/github', as: :github_login
  get "/auth/github/callback", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
