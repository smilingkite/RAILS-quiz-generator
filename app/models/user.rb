class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :answers_user       
  has_many :answers , through: :answers_user
  accepts_nested_attributes_for :answers_user
  accepts_nested_attributes_for :answers

  def answers_given 
    answers_user.includes(:answer)
  end

  def correct_count
    answers_given.select{|a_u| a_u.answer.true }.size
  end

  def false_count
    answers_given.select{|a_u| !a_u.answer.true}.size
  end

end
