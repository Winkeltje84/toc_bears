Rails.application.routes.draw do
  root 'pages#homepage'
  get '/', to: 'pages#homepage'
  get '/attend', to: 'pages#attend'
  get '/incompany', to: 'pages#incompany'
  get '/sponsor', to: 'pages#sponsor'

  devise_for :users, path: 'admin', skip: [:registrations], path_names: { sign_in: 'login', sign_out: 'logout'}

  namespace 'admin' do
    resources :workshops, :events, :sponsor_requests, :sponsors
    resources :incompany_requests, only:[:index, :edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
