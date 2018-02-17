class UserController < ApplicationController
  def update
    @user = current_user
    AnswersUser.where(user_id:current_user.id).delete_all
    quiz_params[:questions_attributes].values.each do |answer|
      puts answer.inspect
      AnswersUser.create({answer_id: answer[:answer], user_id: current_user.id})
    end

    redirect_to quiz_path(quiz_params[:id])

    # if @user.update_attributes(params.require(:quiz).permit(:answer))
    #   redirect_to root_path
    # else
    #   render 'edit'
    # end
  end

  def answers
    params.require()
  end

  def quiz_params
    params.require(:quiz).permit!
  end
end
