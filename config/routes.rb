Rails.application.routes.draw do
  root 'application#home'
  resources :books, only: [:new, :create, :show, :index] do
    resources :questions, only: [:show]
    get '/questions/:id/next', to: 'questions#next', as: :next_question
  end
end
