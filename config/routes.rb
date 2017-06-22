Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # , only: [:new, :edit, :create, :destroy]
  resources :projects do
    resources :tasks
  end

  root 'projects#index'

  post '/projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'
  post '/projects/:project_id/tasks/:id/like' => 'tasks#like'

end
