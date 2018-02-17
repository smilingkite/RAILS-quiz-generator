class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers, dependent: :destroy

  validates :vraag, presence: true
  accepts_nested_attributes_for :answers
  
  attr :answer
end
