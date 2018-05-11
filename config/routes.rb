Rails.application.routes.draw do
  resources :books, only: [:new, :create, :show] do
    resources :questions, only: [:show]
  end
end
