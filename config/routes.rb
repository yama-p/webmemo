Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # , only: [:new, :edit, :create, :destroy]
  resources :yamap, controller: :projects, as: :projects, format:false do

    resources :kazu, controller: :tasks, as: :tasks, format:false do

      member do
        post :toggle
        post :like
        get :send_uploadfile
      end

    end

  end
  # post '/projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'
  # post '/projects/:project_id/tasks/:id/like' => 'tasks#like'

  root 'projects#index' # , constraints:TimeConstraint.new
  
end
