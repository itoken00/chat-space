Rails.application.routes.draw do

  devise_for :users
  root to: "messages#index"
  resources :groups
  resources :message
end
