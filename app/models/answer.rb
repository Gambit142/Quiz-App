class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  belongs_to :question

  validates :response, presence: true, length: { maximum: 1000 }
end
