Rails.application.routes.draw do

  resources :questions
  root "quizzes#index"

  resources :quizzes

end
