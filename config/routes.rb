Rails.application.routes.draw do
  root 'pages#homepage'
  get '/', to: 'pages#homepage'
  get '/attend', to: 'pages#attend'
  get '/incompany', to: 'pages#incompany'
  get '/sponsor', to: 'pages#sponsor'

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
