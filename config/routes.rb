Rails.application.routes.draw do
  resources :heroine_powers
  resources :powers, only: [:index]
  resources :heroines, only: [:index, :show]  
end
