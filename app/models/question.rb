class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers

  validates :title, presence: true, length: { maximum: 1000 }
end
