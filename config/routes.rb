Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  question = Question.new(name: 'brian', age: 32)

  if qestion.save()

  resources quiz [:index, :show] do
    resources question [:index, :show] do
      resources answer [:index, :show]
    end
  end

  class Text do
  end

  class MultipleChoice do
    has_many :options
  end

  create_table :multiple_choice do
    t.integer number_of_options
  end

  create_table :text do
    t.string content
  end


  create_table :question do |t|
    t.string :name
    t.string :question_type
    t.bigint :question_id
    t.timestamps
  end

  /quizes/1/questions/32/asnwer => 
end
