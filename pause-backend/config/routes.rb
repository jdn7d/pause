Rails.application.routes.draw do
  resources :comments, only: [:index, :show, :create]
  resources :meditations, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
