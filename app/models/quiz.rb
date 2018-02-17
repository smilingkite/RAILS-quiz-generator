class Quiz < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions

  validates :name, presence: true
  validates :name, uniqueness: true

  scope :order_by_name, -> { order(:name) }

  accepts_nested_attributes_for :questions
end
