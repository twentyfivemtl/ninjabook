Rails.application.routes.draw do
  root to: 'stories#index'
  # root to: 'stories#new'
  get 'stories/new'
  resources :stories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
