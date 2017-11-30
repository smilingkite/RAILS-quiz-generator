class QuizzesController < ApplicationController
  def index
    @Quizzes = Quiz.all
  end
end
