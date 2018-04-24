Rails.application.routes.draw do

  resources :relationships
  resources :messages
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
  resources :charges
  resources :events
  get '/login' => 'session#new'        # Sign in form
  post '/login' => 'session#create'    # Sign in action
  delete '/login' => 'session#destroy' # Sign out

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :tasks do
    member do
      put "achievement" => "tasks#achievement"
    end
    put :achievement, on: :member
  end
  mount ActionCable.server => '/cable'
   get '/chat' => 'chatrooms#show'

   resources :messages, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
