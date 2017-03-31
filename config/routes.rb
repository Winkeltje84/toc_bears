Rails.application.routes.draw do
  root 'pages#homepage'
  get '/', to: 'pages#homepage'
  get '/attend', to: 'pages#attend'
  get '/incompany', to: 'pages#incompany'
  get '/sponsor', to: 'pages#sponsor'

  devise_for :users, path: 'admin', skip: [:registrations], path_names: { sign_in: 'login', sign_out: 'logout'}

  scope '/admin' do
    resources :workshops, :events, :sponsor_requests
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
