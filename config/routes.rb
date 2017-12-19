Rails.application.routes.draw do

  devise_for :users
  resources :questions
  root "quizzes#index"

  resources :quizzes

end
