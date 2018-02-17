class QuizzesController < ApplicationController
  before_action :authenticate_user!

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
    @user = current_user
  end

# renders a form for creating a new resource - HTTP GET.
# creates new unsaved record and renders the form.
  def new
    @quiz = Quiz.new
  end

# HTTP POST takes record created in 'new' passes to create action,
# attempts to save to database
  def create

    @quiz = Quiz.new(quiz_params)

    if @quiz.save
       redirect_to @quiz
    else
       render 'new'
    end
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])

    if @quiz.update_attributes(quiz_params)
      redirect_to @quiz
    else
      render 'edit'
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])

    @quiz.destroy

    redirect_to quizzes_path
  end

  private

  def quiz_params
    params.require(:quiz).permit(:name)
  end
end
