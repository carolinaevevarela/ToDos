Rails.application.routes.draw do
  get 'todos/index'
  get 'todos/new'
  get 'todos', to: 'todos#show', as: 'todo'
  post 'todos', to: 'todos#create'
  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
