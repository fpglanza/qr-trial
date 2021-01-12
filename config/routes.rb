Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/:id', to: 'users#show', as: :user
  get 'users/new', to: 'users#new'
  get 'users/:id/addpoints', to: 'users#addpoints'

  post 'users', to: 'users#create'

  patch 'users/:id', to: 'users#update'
end
