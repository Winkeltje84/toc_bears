Rails.application.routes.draw do
  root 'pages#homepage'
  get 'pages/homepage', to: 'pages#homepage'
  get 'pages/attend', to: 'pages#attend'
  get 'pages/incompany', to: 'pages#incompany'
  get 'pages/sponsor', to: 'pages#sponsor'

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
