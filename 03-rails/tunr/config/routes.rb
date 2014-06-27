Rails.application.routes.draw do
  get 'pages/haml'
  get '/' => 'pages#hamldemo'
  resources :users
end
