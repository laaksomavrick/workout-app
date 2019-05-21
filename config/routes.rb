Rails.application.routes.draw do
  devise_for :users
  root to: "todays_workout#index"
  resources :routines, only: [:index]
  resources :workout_days, only: [:new]
  resources :lifts, except: [:destroy, :show]
end
