class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :quizzes
  has_many :answers

  validates :name, presence: true, length: { maximum: 100 }
end
