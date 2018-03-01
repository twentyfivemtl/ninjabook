Rails.application.routes.draw do

  resource :session
  resources :users
  resources :tags
  resources :stories do
    resources :votes
  end
  resources :stories do
    collection do
      get "stories/bin"
    end
    resources :votes
  end

  root 'stories#index'

  get 'tags/show'
  get 'users/show'
  get 'votes/create'
  get 'stories/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
