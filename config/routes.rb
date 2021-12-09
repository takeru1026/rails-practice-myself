Rails.application.routes.draw do
  devise_for :end_users
  get 'home/index'
  get 'home/show'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
