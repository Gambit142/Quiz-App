class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :answers

  validates :name, presence: true, length: { maximum: 1000 }
end
