Rails.application.routes.draw do
  resources :subjects
  resources :places
  devise_for :users
  root to: "places#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
