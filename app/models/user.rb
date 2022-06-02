class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :quizzes
  has_many :answers

  validates :name, presence: true, length: { maximum: 100 }

  def answer_for(question)
    answer = Answer.find_by(question_id: question.id, user_id: id, quiz_id: question.quiz.id)
    if answer
      return answer.response
    end
  end
end
