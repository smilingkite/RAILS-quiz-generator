class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers

  validates :vraag, presence: true
end
