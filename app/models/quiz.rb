class Quiz < ApplicationRecord

  has_many :questions, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true

  scope :order_by_name, -> { order(:name) }

end
