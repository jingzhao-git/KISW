Rails.application.routes.draw do
  get 'welcome/index'
  resources :questions
  root 'welcome#index'
  get 'questions/new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
