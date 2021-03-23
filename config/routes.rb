Rails.application.routes.draw do
  get 'welcome/index'
  resources :questions, only: [:show, :index, :new, :create]

  root 'welcome#index'
  get 'questions/new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
