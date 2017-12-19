class Answer < ApplicationRecord
  belongs_to :question

  validates :true, presence: true
  validates :answertext, presence: true
end
