Rails.application.routes.draw do
    resources :user, only: [:index, :show]
    resources :post, only: [:index, :show]
end
