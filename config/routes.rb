Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, :answers, :questions
  devise_for :users
end
