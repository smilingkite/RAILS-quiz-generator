Rails.application.routes.draw do

  root "quizzes#index"

  get "quizzes" => "quizzes#index"
  get 'quizzes/new' => "quizzes#new", as: :new_quiz
  get "quizzes/:id" => "quizzes#show", as: :quiz

  post "quizzes" => "quizzes#create"
end
