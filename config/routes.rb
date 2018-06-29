Rails.application.routes.draw do
  get 'answers/create'

  root 'application#home'
  resources :books, only: [:new, :create, :show, :index] do
    resources :questions, only: [:show] do
      resources :answers, only: [:create]
    end
    get '/questions/:id/next', to: 'questions#next', as: :next_question
  end

  resources :answers
end
