Rails.application.routes.draw do
  devise_for :users
  root to: "todays_workout#index"
  resources :routines, only: [:index]
  resources :lifts, only: [:index, :show, :update]
end
