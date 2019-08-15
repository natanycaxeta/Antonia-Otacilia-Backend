Rails.application.routes.draw do
    resources :user, only: [:index, :show]
    resources :post, only: [:index, :show, :create]
    post '/login', to: 'auth#create' #needs the username and password
    get '/profile', to: 'users#show' #take in the token
end
