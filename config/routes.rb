Rails.application.routes.draw do

  resources :badges
  get '/tasks/food' => 'tasks#food'
  get '/tasks/shop' => 'tasks#shop'
  get '/tasks/water' => 'tasks#water'
  get '/tasks/waste' => 'tasks#waste'
  get '/tasks/transport' => 'tasks#transport'
  get '/tasks/energy' => 'tasks#energy'

  get '/users/scoreboard' => 'users#scoreboard'

  root :to => 'users#new'
  get '/home' => 'pages#home'

  resources :tasks
  resources :achievements
  resources :users

  get '/login' => 'session#new'        # Sign in form
  post '/login' => 'session#create'    # Sign in action
  delete '/login' => 'session#destroy' # Sign out


  resources :tasks do
    member do
      put "achievement" => "tasks#achievement"
    end
    put :achievement, on: :member
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
