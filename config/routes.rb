require 'sidekiq/web'
Rails.application.routes.draw do
  root 'questions#index'
  resources :posts, :answers, :questions
  devise_for :users

  mount Sidekiq::Web, at: '/sidekiq'
end
