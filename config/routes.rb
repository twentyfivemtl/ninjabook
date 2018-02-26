Rails.application.routes.draw do



  get 'votes/create'

  root to: 'stories#index'
  # root to: 'stories#new'
  get 'stories/new'

  resources :stories do
    resources :votes do
    end
  end

  resource :session
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
