Rails.application.routes.draw do
    resources :user, only: [:index, :show, :create]
    resources :post, only: [:index, :show]
end
