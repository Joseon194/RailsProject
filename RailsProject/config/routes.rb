Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get '/signup' => 'users#new'
post '/signup' => 'user#create'

get '/signin' => 'sessions#new'
post '/signin' => 'sessions#create'
delete '/signout' => 'sessions#destroy'

post '/car' => 'cars#create'

resources :users
resources :cars
end
