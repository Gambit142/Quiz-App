Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  
  root "home#index"

  resources :quizzes do
    resources :questions do
      resources :answers
    end
  end
end
