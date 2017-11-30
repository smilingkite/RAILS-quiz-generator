class Quiz < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :questions
  scope :order_by_name, -> { order(:name) }

end
