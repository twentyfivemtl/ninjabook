Rails.application.routes.draw do



  get 'users/show'

  get 'votes/create'

  root 'stories#index'
  # root to: 'stories#new'
  get 'stories/new'

  resources :stories do
    resources :votes
  end

  resources :stories do
    collection do
      get "stories/bin"
    end
    resources :votes
  end

  resource :session
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
