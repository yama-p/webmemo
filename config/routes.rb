Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :tasks, only: [:create, :destroy]
  end

  root 'projects#index'

  post '/projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'

end
