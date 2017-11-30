Rails.application.routes.draw do

  root "quizzes#index"

  get "quizzes" => "quizzes#index"

end
