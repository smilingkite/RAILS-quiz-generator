class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

# renders a form for creating a new resource - HTTP GET.
# creates new unsaved record and renders the form.
  def new
    @quiz = Quiz.new
  end

# HTTP POST takes record created in 'new' passes to create action,
# attempts to save to database
  def create
    quiz_params = params.require(:quiz).permit(:name)

    @quiz = Quiz.new(quiz_params)

    if @quiz.save
       redirect_to @quiz
    else
       render 'new'
    end
  end
end
