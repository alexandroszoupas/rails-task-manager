Rails.application.routes.draw do
  # read all
  get '/tasks', to: 'tasks#index'

  # create one
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # read one
  get '/tasks/:id', to: 'tasks#show', as: :task

  # update one
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # delete one
  delete '/tasks/:id', to: 'tasks#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
