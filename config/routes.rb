Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :students, only: [:show, :index, :create, :update, :destroy]
resources :instructors, only: [:show, :index, :create, :update, :destroy]
end
