Rails.application.routes.draw do
  resources :answers
  resources :catagories
  devise_for :users
  get 'welcome/index'
  resources :questions do
    collection do
      get :my_questions
    end
  end

  root 'welcome#index'
  get 'questions/new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
