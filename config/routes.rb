Rails.application.routes.draw do
  devise_for :users
  
  root "quizzes#index"
end
