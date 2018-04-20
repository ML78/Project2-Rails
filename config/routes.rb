Rails.application.routes.draw do

  root :to => 'users#new'

  resources :tasks
  resources :achievements
  resources :users

  get '/login' => 'session#new'        # Sign in form
  post '/login' => 'session#create'    # Sign in action
  delete '/login' => 'session#destroy' # Sign out

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
