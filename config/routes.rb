Rails.application.routes.draw do

  root "quizzes#index"

  resources :quizzes

end
