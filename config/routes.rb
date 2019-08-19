Rails.application.routes.draw do
    resources :users, only: [:index, :show]
    resources :post, only: [:index, :show, :create]
    resources :user_post, only: [:index, :create]
    post '/login', to: 'auth#create' #needs the username and password
    get '/profile', to: 'users#show' #take in the token
end
