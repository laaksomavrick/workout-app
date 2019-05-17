Rails.application.routes.draw do
  devise_for :users
  root to: "todays_workout#index"
end
