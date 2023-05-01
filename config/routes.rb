Rails.application.routes.draw do
 get "home/about", to: "homes#about"
 root :to => 'homes#top'
  devise_for :users
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  get "users/:id" => "users#show", as: :mypage
  
end