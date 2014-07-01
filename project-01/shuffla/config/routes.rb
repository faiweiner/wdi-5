Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users
  resources :games
  resources :questions

  post '/questions/new' => 'questions#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
